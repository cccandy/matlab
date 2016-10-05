function mailme
%a = rand(100);
%DataPath = ['C:\Matlabrun\','X_test.csv'];
%save(DataPath,'a');
MailAddress = '';%qq邮箱（字符串）
password =；%qq邮箱请自己申请密钥 （字符串）
setpref('Internet','E_mail',MailAddress);
setpref('Internet','SMTP_Server','smtp.qq.com');
setpref('Internet','SMTP_Username',MailAddress);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');
subject = 'MATLAB 发的测试邮件';
content = '你好，这份邮件是我用MATLAB发的，数据见附件';
sendmail('%',subject,content);%此处填入自己的目标邮箱

