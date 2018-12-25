class TaskMailer < ApplicationMailer
 default from: 'usako7233@gmail.com'      
    
  def creation_email(task)
    @task = task
    mail(
     subjent: 'タスク作成完了メール',
     to: 'koohiiko77@gmail.com'  
    )  
  end
end
