function mailme
%a = rand(100);
%DataPath = ['C:\Matlabrun\','X_test.csv'];
%save(DataPath,'a');
MailAddress = '';%qq���䣨�ַ�����
password =��%qq�������Լ�������Կ ���ַ�����
setpref('Internet','E_mail',MailAddress);
setpref('Internet','SMTP_Server','smtp.qq.com');
setpref('Internet','SMTP_Username',MailAddress);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');
subject = 'MATLAB ���Ĳ����ʼ�';
content = '��ã�����ʼ�������MATLAB���ģ����ݼ�����';
sendmail('%',subject,content);%�˴������Լ���Ŀ������

