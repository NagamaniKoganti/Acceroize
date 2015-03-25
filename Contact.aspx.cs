using System;
using System.Net.Mail;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("nagamani.ramineni@gmail.com");
                mailMessage.To.Add("nagamani.ramineni@gmail.com");
                mailMessage.Subject = TxtSubject.Text;


                mailMessage.Body = "<b>Sender Name : </b>" + TxtName.Text + "<br/>"
                    + "<b>Sender Email : </b>" + TxtEmail.Text + "<br/>"
                    + "<b>Comments : </b>" + TxtComments.Text;
                mailMessage.IsBodyHtml = true;


                var smtpClient = new SmtpClient();
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("nagamani.ramineni@gmail.com", "********"
                smtpClient.Send(mailMessage);

                LabelMessage.ForeColor = System.Drawing.Color.Blue;
                LabelMessage.Text = "Thank you for contacting us";

                TxtName.Enabled = false;
                TxtEmail.Enabled = false;
                TxtComments.Enabled = false;
                TxtSubject.Enabled = false;
                BtnSend.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            // Log the exception information to 
            // database table or event viewer
            LabelMessage.ForeColor = System.Drawing.Color.Red;
            LabelMessage.Text = "There is an unkwon problem. Please try later";
        }

    }
}
