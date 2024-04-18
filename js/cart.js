// SELECT ELEMENTS
// const productsEl = document.querySelector(".products");
const cartItemsEl = document.querySelector(".cart-items");
const subtotalEl = document.querySelector(".card-total");
const totalItemsInCartEl = document.querySelector(".total-items-in-cart");
const openShopping = document.querySelector(".header-cart");
const addCart = document.querySelector(".cart");
const closeShopping = document.querySelector(".close-cart");

// bắt sự kiện mở giỏ hàng
openShopping.addEventListener('click', function (e){
    e.preventDefault();
    addCart.classList.add('cart-display');

})
// bắt sự kiện đóng giỏ hàng
closeShopping.addEventListener('click',function (e){
    e.preventDefault();
    addCart.classList.remove('cart-display');

})
// in ra sản phẩm có trong mảng được định danh
// function renderProducts() {
//     // gọi từ mảng products được định danh sẵn
//     products.forEach((product) => {
//         // chạy vòng for lặp lại để in ra danh sách sản phẩm
//         if (productsEl){
//             const sale = product.sale > 0 ? "" : "d-none";
//             const prd_new = product.new == 1 ? "" : "d-none";
//             productsEl.innerHTML += ` 
//             <li>
//                 <div class="product-item">            
//                     <div class="product-top">
                        
//                         <div class="home-product-item_sale-off ${sale}">
//                             <span class="home-product-item_sale-off-percent">${product.sale}%</span>
//                             <span class="home-product-item_sale-off-label">SALE OFF</span>
//                             <span class="home-product-item_sale-off-tail"></span>
//                         </div>
//                         <div class="home-product-item_new ${prd_new}">
//                             <span class="home-product-item_new">NEW</span>
//                         </div>
//                         <a href="javascript:void(0)" class="product-thumb">
//                             <img src="${product.imgSrc}" alt="${product.name}">
//                         </a>
//                         <a href="javascript:void(0)" onclick="addToCart(${product.id})" class="buy-now"><i class="fas fa-cart-plus"></i></a>
//                     </div>
//                     <div class="product-infor">
//                         <a href="" class="product-cat">${product.description}</a>
//                         <a href="" class="product-name">${product.name}</a>
//                         <div class="product-price text-danger">$ ${product.price}</div>
//                     </div>
//                 </div>
//             </li>
//         `;
//         }
//     });
// }
// renderProducts();

// Lấy dữ liệu từ trên local storage xuống theo key "CART"
let cart = JSON.parse(localStorage.getItem("CART")) || [];
// cập nhật giỏ hàng
updateCart();

// thêm vào giỏ hàng theo id sản phẩm
function addToCart(id) {
    // Kiểm tra xem sản phẩm đã có trong giỏ hàng chưa
    if (cart.some((item) => item.id === id)) {
        // Nếu đã có thì chạy xuống hàm changeNumberOfUnits để cộng vào số lượng
        changeNumberOfUnits("plus", id);
    } else {
        // Nếu chưa có thì từ id tìm được thông tin sản phẩm
        const item = products.find((product) => product.id === id);
        // Sau đó đẩy vào (mảng) giỏ hàng
        cart.push({
            ...item,
            numberOfUnits: 1, // số lượng 1
        });
    }
    // cập nhật giỏ hàng
    addCart.classList.add('cart-display');
    updateCart();
}

// cập nhật giỏ hàng
function updateCart() {
    // In ra danh sách giỏ hàng
    renderCartItems();
    // In ra tổng số tiền
    renderSubtotal();
    // Lưu giỏ hàng vào local storage theo key "CART"
    localStorage.setItem("CART", JSON.stringify(cart));
}

// Tính và in ra tổng sô tiền
function renderSubtotal() {
    let totalPrice = 0,
        totalItems = 0;
    // numberOfUnits là số lượng sản phẩm
    cart.forEach((item) => {
        totalPrice += item.price * item.numberOfUnits;
        totalItems += item.numberOfUnits;
    });
    subtotalEl.innerHTML = `<p>Thành tiền:</p> <p><smal>$</smal>${totalPrice}</p>`;
    totalItemsInCartEl.innerHTML = totalItems;
}

// In ra danh sách giỏ hàng
function renderCartItems() {
    cartItemsEl.innerHTML = ""; // Xóa những phần tử cũ để cập nhật lại
    // cart là dữ liệu lấy từ local storage xuống
    cart.forEach((item) => {
        // Chạy vòng lặp in ra danh sách trong giỏ hàng
        cartItemsEl.innerHTML += `
        <div class="cart-item">
            <div class="item-image" >
                <img src="${item.imgSrc}" alt="${item.name}">
            </div>
            <div class="item-info" >
                <p>${item.name}</p>
                <div class="units">
                    <div>Số lượng: </div>
                    <div class="btn minus" onclick="changeNumberOfUnits('minus', ${item.id})">-</div>
                    <div class="number">${item.numberOfUnits}</div>
                    <div class="btn plus" onclick="changeNumberOfUnits('plus', ${item.id})">+</div>
                </div>
                <div class="unit-price">
                    <small>$</small>${item.price}
                </div>
                <a class="remove text-danger" href="javascript:void(0)" onclick="removeItemFromCart(${item.id})" >
                    <i class="fas fa-trash"></i>
                </a>
            </div>
        </div>
      `;
    });
}

// Xóa sản phẩm trong giỏ hàng theo id
function removeItemFromCart(id) {
    cart = cart.filter((item) => item.id !== id);
    updateCart();
}

// Hàm để thay đổi số lượng sản phẩm trong giỏ hàng
function changeNumberOfUnits(action, id) {
    // lặp qua mảng giỏ hàng bằng hàm map
    cart = cart.map((item) => {
        let numberOfUnits = item.numberOfUnits; // số lượng sản phẩm
        if (item.id === id) {
            // Kiểm tra xem điều kiện truyền vào là gì (nếu là minus thì sẽ từ trừ đi 1 qua mỗi vòng lặp, plus thì ngược lại)
            if (action === "minus" && numberOfUnits > 1) {
                numberOfUnits--;
            } else if (action === "plus" && numberOfUnits < item.instock) {
                numberOfUnits++;
            }
        }
        return {
            ...item,
            numberOfUnits,
        };
    });
    updateCart();
}

