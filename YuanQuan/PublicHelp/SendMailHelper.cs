using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using CodeScales.Http;
//using CodeScales.Http.Entity;
//using System.Http.Entity.Mime;
//using CodeScales.Http.Methods;
using System.Net;

namespace PublicHelp
{
    public class SendMailHelper
    {
         public static void send(String email)
          {
              //HttpClient client = new HttpClient();
              //HttpPost postMethod = new HttpPost(new Uri("http://sendcloud.sohu.com/webapi/mail.send.json"));

              //MultipartEntity multipartEntity = new MultipartEntity();
              //postMethod.Entity = multipartEntity;

              //multipartEntity.AddBody(new StringBody(Encoding.UTF8, "api_user", "yonghuming_test_vVUv3e"));
              //multipartEntity.AddBody(new StringBody(Encoding.UTF8, "api_key", "DJoBY38tFXbZO3NR"));
              //multipartEntity.AddBody(new StringBody(Encoding.UTF8, "from", "service@sendcloud.im"));
              //multipartEntity.AddBody(new StringBody(Encoding.UTF8, "fromname", "一起刀奈特"));
              //multipartEntity.AddBody(new StringBody(Encoding.UTF8, "to", "email"));
              //multipartEntity.AddBody(new StringBody(Encoding.UTF8, "subject", "来自一起刀奈特的第一封邮件！"));
              //multipartEntity.AddBody(new StringBody(Encoding.UTF8, "html", "你太棒了！"));

              //HttpResponse response = client.Execute(postMethod);

              //Console.WriteLine("Response Code: " + response.ResponseCode);
              //Console.WriteLine("Response Content: " + EntityUtils.ToString(response.Entity));
              Uri uri = new Uri("http://sendcloud.sohu.com/webapi/mail.send.json?api_user=yonghuming_test_vVUv3e&api_key=DJoBY38tFXbZO3NR&"
                + "from=service@sendcloud.im&fromname=一起刀奈特&subject=来自一起刀奈特的第一封邮件！&html=你太棒了！&to="
                 +email+"&replyto=1039247043@qq.com&label=16800&resp_email_id=true");
              HttpWebRequest request = HttpWebRequest.Create(uri) as HttpWebRequest;
              request.Method = "GET";
              request.ProtocolVersion = new Version(1, 1);   

          }

    }
}
