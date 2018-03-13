using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.sentmsglbl.Visible = false;
    }

    private void sendgmail(string body, string subject, string to)
    {
        try
        {
            SmtpClient smtpserver = new SmtpClient();
            MailMessage mail = new MailMessage();
            smtpserver.EnableSsl = true;
            smtpserver.Credentials = new NetworkCredential("E.commerce@gmail.com", "admin");
            smtpserver.Port = 587;
            smtpserver.Host = "smtp.gmail.com";
            mail.From = new MailAddress("E.commerce@gmail.com");
            mail.To.Add(to);
            mail.Subject = subject;
            mail.Body = body;
            smtpserver.Send(mail);
            mail.Dispose();
        }
        catch (Exception ex) { }
        finally { }
    }
    protected void SendEmail(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(this.emailtxt.Text) && this.IsValid(this.emailtxt.Text))
        {
            this.sendgmail(this.message.Text, "Fashion", this.emailtxt.Text);
            this.emailtxt.Text = "";
            this.sentmsglbl.Visible = true;
            this.erroremail.Visible = false;
        }
        else
        {
            this.emailtxt.Text = "";
            this.erroremail.Visible = true;
        }
    }

    public bool IsValid(string emailaddress)
    {
        try
        {
            MailAddress m = new MailAddress(emailaddress);
            return true;
        }
        catch (Exception)
        {
            return false;
        }
    }
}