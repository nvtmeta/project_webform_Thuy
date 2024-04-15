// Lấy dữ liệu từ trên local storage xuống theo key "accountInfo"
let accountInfo = JSON.parse(localStorage.getItem("accountInfo")) || [];
const auth_check = document.getElementById('auth_check');
function renderAuth() {
    // Kiểm tra xem trên local storage có "accountInfo" chứa thông tin tài khoản, mật khẩu không
    if (accountInfo != ''){
        // Nếu có thì hiện thông tin người dùng trên thanh header và nút đăng xuất
        auth_check.innerHTML = '';
        auth_check.innerHTML += `
            <a href="#">
                <i class="fas fa-user-alt"></i>
                 ${accountInfo.username}
             </a>
             <a href="javascript:void(0)" onclick="logOut()" style="border-left: 1px solid gray">
                <i class="fas fa-sign-out-alt"></i>
                 Đăng xuất
             </a>
        `;
    }else {
        // Nếu không thì hiện lên nút đăng nhập
        auth_check.innerHTML = '';
        auth_check.innerHTML += `
            <a href="login.html">
                <i class="fas fa-user-alt"></i>
                 Đăng nhập
             </a>
        `;
    }
}
function logOut() {
    // Xóa những thông tin người dùng trong "accountInfo" lưu ở storage
    localStorage.removeItem("accountInfo");
    // Cho back về trang login
    window.location.href='login.html';
}
renderAuth();