export async function fetch_form(form){
  let formdata=new FormData(form);
  console.log(form.action,form.method);
  let res=await fetch(form.action,{
    method:form.method,
    body:formdata
  });
  return await res.json();
}
