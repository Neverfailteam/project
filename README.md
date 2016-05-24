Dự án của bọn mình là làm một diễn đàn về gym để mọi người cùng thảo luận.
Các chức năng của diễn đàn
- Tạo tài khoản 
- Tạo post mới để mọi người cùng thảo luận
- Mọi người có thể comment từng post
- Đây là link của ứng dụng : https://desolate-eyrie-71209.herokuapp.com/
- Link pivotal tracker https://www.pivotaltracker.com/n/projects/1556149

  THÀNH VIÊN:
- Nguyễn Đức Tài
- Nguyễn Văn Cương
- Dương Minh Đức 
- Dương Quang Huy
- Phạm Đức Lưu
  
QUY TRÌNH DỰ ÁN :
- tạo static_pagesc_controller, post controller, comment controller, sesion controller, user controller https://github.com/Neverfailteam/project/tree/master/app/controllers
- tạo home.html.erb: https://github.com/Neverfailteam/project/blob/master/app/views/static_pages/home.html.erb
- sửa root trong route thành 'static_pages#home', sửa route để có thể sử dụng post và comment, sửa trang chủ để hiển thị các post https://github.com/Neverfailteam/project/blob/master/config/routes.rb
- tạo model user với name, email, password sử dụng mã hóa với has_secure_password, tạo post model belong user: https://github.com/Neverfailteam/project/blob/master/app/models/user.rb
- tạo new, form cho comment https://github.com/Neverfailteam/project/tree/master/app/views/comments
- tạo form, view, edit, new cho post https://github.com/Neverfailteam/project/tree/master/app/views/posts
- tạo comment model belong user and post https://github.com/Neverfailteam/project/blob/master/app/models/comment.rb
- tạo phần test cho log_in, post, comment sử dụng cucumber https://github.com/Neverfailteam/project/tree/master/features
- tạo các step cho test https://github.com/Neverfailteam/project/tree/master/features/step_definitions
- phần coverage đạt 80% mình để ở trên nhé

 TEST
- Test đc 81,02 % app
-link ảnh https://github.com/Neverfailteam/project/blob/master/1.png
- link down https://drive.google.com/file/d/0B_Aul-ZtAP56NEpmY2JQb0owRm8/view?usp=sharing

