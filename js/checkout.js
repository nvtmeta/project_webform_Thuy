const form_checkout = document.getElementById('checkout-form');
const user_info = document.getElementById('user_info');
const orderItemsEl = document.querySelector(".order-items");
const orderTotal = document.querySelector(".order-total");

// Lấy dữ liệu từ trên local storage xuống theo key "CART"
let cartItem = JSON.parse(localStorage.getItem("cartItem")) || [];
let userInfo = JSON.parse(localStorage.getItem("userInfo")) || [];

// Bắt sự kiện khi thanh toán
form_checkout.addEventListener('submit', function (e) {
    e.preventDefault(); // Ngăn sự kiện gửi đi
    // Lưu thông tin người đơn hàng người dùng vào local storage với key "userInfo"
    const info = {
        username: document.getElementById('username').value,
        email: document.getElementById('email').value,
        phone: document.getElementById('phone').value,
        city: document.getElementById('city').value,
        address: document.getElementById('address').value,
    }
    localStorage.setItem("userInfo", JSON.stringify(info));
    // Lưu tạm những sản phẩm người dùng đặt vào local storage với key "cartItem"
    localStorage.setItem("cartItem", JSON.stringify(cart));
    // Xóa những thông tin giỏ hàng lưu ở storage cũ
    localStorage.removeItem("CART")
    // Thành công thì chuyển đến trang xem thông tin đơn hàng mình đặt
    window.location.href='checkout_done.html';
});
// In ra thông tin người dùng gửi
renderOrder();
function renderOrder() {
    // user_info là biến để lưu thông tin người dùng ở local storage
    if (user_info){
        user_info.innerHTML = ""; // Xóa những phần tử cũ để cập nhật lại
        user_info.innerHTML += `
            <p>Tên khách hàng : ${userInfo.username}</p>
            <p>Số điện thoại : ${userInfo.phone}</p>
            <p>Số điện thoại : ${userInfo.phone}</p>
            <p>Địa chỉ : ${userInfo.address}, ${userInfo.city}</p>
        `;
    }
}

// In ra sản phẩm đơn hàng
renderOrderItems();
function renderOrderItems() {
    if (orderItemsEl){
        orderItemsEl.innerHTML = ""; // Xóa những phần tử cũ để cập nhật lại
        // cartItem là dữ liệu lấy từ local storage xuống
        cartItem.forEach((item) => {
            // Chạy vòng lặp in ra danh sách trong giỏ hàng
            orderItemsEl.innerHTML += `
                <div class="cart-item px-2 ">
                 
                    <div class="item-info d-flex justify-content-between w-100" >
                        <span >${item.name}</span>
                        <div class="units">
                            <div>Số lượng: </div>
                            <div class="number">${item.numberOfUnits}</div>
                        </div>
                        <div class="unit-price">
                            <small>$</small>${item.price}
                        </div>
                    </div>
                </div>
              `;
        });
    }

}
// In ra tổng số tiền
renderOrderTotal()
function renderOrderTotal() {
    let totalPrice = 0;
    // numberOfUnits là số lượng sản phẩm
    cartItem.forEach((item) => {
        totalPrice += item.price * item.numberOfUnits;
    });
    if (orderTotal){
        orderTotal.innerHTML = ` <h4> <b>Tổng tiền:</b> </h4>  <p><b><small>$</small>${totalPrice}</b></p>`;

    }
}