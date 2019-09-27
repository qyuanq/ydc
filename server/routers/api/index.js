const Router = require('koa-router');
const re=require('../../lib/re');
const guid=require('uuid/v4');
const config=require('../../config');

let router=new Router();

router.get('/account_catalog',async ctx=>{
    ctx.body=['娱乐','汽车','情感','美食','时尚','js'];
});
router.get('/get_province',async ctx=>{
    ctx.body=await ctx.db.query('select * from province');
});
router.get('/get_city/:proid/',async ctx=>{
    let {proid}=ctx.params;
    ctx.body=await ctx.db.query('select * from city where proID=?',proid);
});

router.get('/catalog/:parent',async ctx=>{
    let {parent}=ctx.params;
    ctx.body=await ctx.db.query("SELECT ID,title FROM catalog_table WHERE parentID=?",parent);
});

router.get('/get_user/:token',async ctx=>{
    let{token}=ctx.params;
    let rows=await ctx.db.query('SELECT * FROM user_table WHERE token=?',token);
    let row=rows[0];
    //类型
    if(row['type']==0){
        row['type']='媒体';
    }else if(row['type']==1){
        row['type']='自媒体';
    }else if(row['type']==2){
        row['type']='组织机构';
    }else if(row['type']==3){
        row['type']='企业';
    }
    //分类
    if(row['catalog']==0){
        row['catalog']='娱乐';
    }else if(row['catalog']==1){
        row['catalog']='汽车';
    }else if(row['catalog'==2]){
        row['catalog']='情感';
    }else if(row['catalog']==3){
        row['catalog']='美食'
    }else if(row['catalog']==4){
        row['catalog']='时尚'
    }
    //先城市(如果先省份会改变row['province']是名字不是id了)
    let c_name=await ctx.db.query('SELECT name FROM city WHERE ID=? AND proID=?',[row['city'],row['province']]);
    // row['city']=city_name[0].name;
    let city_name=c_name[0].name;
    //省份
    let pro_name =await ctx.db.query('SELECT name FROM province WHERE ID=?',row['province']);
    // row['province']=pro_name[0].name;
    let province_name=pro_name[0].name;//省会名字
    ctx.body=[row,province_name,city_name];
});


router.post('/reg',async ctx=>{
    let post = ctx.request.fields;
    if(!re.email.test(post['email'])){
        ctx.body={err: 1, msg: 'email incorrect'};
    }else{
        await ctx.db.query(
            "INSERT INTO user_table (email, password, type, display_name, slogan, catalog, icon, description, other_channels, name, identify_number, province, city, qq_wx, recommend_code, token, token_expires) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
            [post['email'], post['password'], post['type'], post['display_name'], post['slogan'], post['catalog'], post['icon'], post['description'], post['other_channels'], post['name'], post['identify_number'], post['province'], post['city'], post['qq_wx'], post['recommend_code'], '', 0]
        );

        ctx.body={err: 0};
    }
});

router.post('/edit',async ctx=>{
    let post=ctx.request.fields;
    console.log(post);
    let token=post['token'];
    //验证token
    let row=await ctx.db.query('SELECT ID,token_expires FROM user_table WHERE token=?',token);
    if(!row.length){
        ctx.body={err:1,msg:'need login'};
    }else{
        let {ID,token_expires}=row[0];
        let now=Math.floor(Date.now()/1000);
        if(now>token_expires){
            ctx.body={err:2,msg:'token expired'};
        }else{
             await ctx.db.query("UPDATE user_table SET display_name=?,slogan=?,catalog=?,icon=?,description=?,other_channels=?,name=?,identify_number=?,province=?,city=?,qq_wx=?,recommend_code=? WHERE ID=?",
                 [post['display_name'], post['slogan'], post['catalog'], post['icon'], post['description'], post['other_channels'], post['name'], post['identify_number'], post['province'], post['city'],post['qq_wx'], post['recommend_code'],ID]);
            ctx.body={err:0};
        }
    }
});

router.post('/login',async ctx=>{
    let {email,password}=ctx.request.fields;
    let rows=await ctx.db.query("SELECT * FROM user_table WHERE email=?",email);
    if(rows.length==0){
        ctx.body={err:1,msg:'no this user'};
    }else{
        let row=rows[0];
        if(row['password']!=password){
            ctx.body={err:1,msg:'password error'};
        }else{
            let token=guid().replace(/\-/g,'');//token标识
            let id=row['ID'];
            let token_expires=Math.floor((Date.now()+config.TOKEN_AGE)/1000);//token有效期，秒
            await ctx.db.query("UPDATE user_table SET token=?,token_expires=? WHERE ID=?",[token,token_expires,id]);
            ctx.body={err:0,token};
        }
    }
});

router.post('/publish',async ctx=>{
    let post=ctx.request.fields;
    console.log(post);
    let token=post['token'];
    //验证token
    let rows=await ctx.db.query('SELECT ID,token_expires FROM user_table WHERE token=?',[token]);
    if(!rows.length){
        ctx.body={err:1,msg:'need login'};
    }else{
        let {ID,token_expires}=rows[0];
        let now=Math.floor(Date.now()/1000);    //秒
        if(now>token_expires){
            ctx.body={err:2,msg:'token expired'};
        }else{
            let catalogs=post['catalogs'].join(',');//前台接收的数据是数组，变成字符串存到数据库
          await ctx.db.query('INSERT INTO article_table(title,content,catalogs,cover,userID,post_time,review) VALUES(?,?,?,?,?,?,?)',[post['title'],post['content'],catalogs,post['cover'],ID,now,0]);
          ctx.body={err:0};
        }
    }
});



module.exports=router.routes();