/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



function valid()
{
     
    if((document.pass1.tpwd.value)!=(document.pass1.tpwd1.value))
        {
            document.getElementById("errPwd").innerHTML="Password do not match";
             document.pass1.tpwd1.focus();
             return false;
        }
            else
            {
             document.getElementById("errPwd").innerHTML="";   
            }
}