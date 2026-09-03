Sure — here is a completely different friendly UI for your e-commerce shop. It uses a playful cream/coral/mint palette, modern cards, pill categories, a large hero section, and a cleaner marketplace layout.

HTML
Writing
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>NexusShop — Shop Happy</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@500;600;700;800&display=swap" rel="stylesheet">

  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
  >

  <link rel="stylesheet" href="style.css">
</head>

<body>

  <!-- HEADER -->
  <header class="header">
    <div class="container nav">

      <a href="#" class="logo">
        <span class="logo-icon">
          <i class="fa-solid fa-bag-shopping"></i>
        </span>
        Nexus<span>Shop</span>
      </a>

      <nav class="desktop-menu">
        <a href="#" class="active">Home</a>
        <a href="#shop">Shop</a>
        <a href="#categories">Categories</a>
        <a href="#deals">Deals</a>
        <a href="#about">About</a>
      </nav>

      <div class="nav-right">

        <div class="search-box">
          <i class="fa-solid fa-magnifying-glass"></i>
          <input
            type="text"
            placeholder="Search products..."
          >
        </div>

        <button class="nav-icon">
          <i class="fa-regular fa-heart"></i>
        </button>

        <button class="nav-icon">
          <i class="fa-regular fa-user"></i>
        </button>

        <button class="cart-btn">
          <i class="fa-solid fa-bag-shopping"></i>
          <span>2</span>
        </button>

      </div>

      <button class="mobile-menu">
        <i class="fa-solid fa-bars"></i>
      </button>

    </div>
  </header>


  <main>

    <!-- HERO -->
    <section class="hero container">

      <div class="hero-content">

        <div class="small-label">
          <span>✦</span>
          SHOP HAPPY
        </div>

        <h1>
          Find things
          <span>you'll love.</span>
        </h1>

        <p>
          Discover everyday favorites, thoughtful finds,
          and little things that make life better.
        </p>

        <div class="hero-buttons">
          <a href="#shop" class="btn btn-primary">
            Explore products
            <i class="fa-solid fa-arrow-right"></i>
          </a>

          <a href="#deals" class="btn btn-light">
            Today's deals
          </a>
        </div>

        <div class="hero-trust">

          <div class="avatars">
            <span>👩🏻</span>
            <span>👨🏽</span>
            <span>👩🏽</span>
            <span>👨🏻</span>
          </div>

          <div>
            <strong>10k+ happy shoppers</strong>
            <small>★★★★★ Loved by our community</small>
          </div>

        </div>

      </div>


      <div class="hero-visual">

        <div class="shape shape-one"></div>
        <div class="shape shape-two"></div>

        <div class="hero-card main-product">

          <div class="floating-tag">
            ✨ Trending
          </div>

          <img
            src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=85"
            alt="Smart watch"
          >

          <div class="hero-product-info">
            <div>
              <small>Featured pick</small>
              <h3>Smart Watch</h3>
            </div>

            <strong>$129</strong>
          </div>

        </div>

        <div class="floating-product floating-product-one">
          <span>🎧</span>
          <div>
            <strong>Headphones</strong>
            <small>$89</small>
          </div>
        </div>

        <div class="floating-product floating-product-two">
          <span>👟</span>
          <div>
            <strong>New sneakers</strong>
            <small>20% OFF</small>
          </div>
        </div>

      </div>

    </section>


    <!-- CATEGORIES -->
    <section class="section container" id="categories">

      <div class="section-heading">

        <div>
          <span class="eyebrow">EXPLORE</span>
          <h2>Browse your favorites</h2>
        </div>

        <a href="#">
          View all
          <i class="fa-solid fa-arrow-right"></i>
        </a>

      </div>


      <div class="category-list">

        <a href="#" class="category category-orange">
          <span class="category-icon">
            <i class="fa-solid fa-mobile-screen"></i>
          </span>
          <strong>Phones</strong>
          <small>120 items</small>
        </a>

        <a href="#" class="category category-blue">
          <span class="category-icon">
            <i class="fa-solid fa-laptop"></i>
          </span>
          <strong>Technology</strong>
          <small>86 items</small>
        </a>

        <a href="#" class="category category-pink">
          <span class="category-icon">
            <i class="fa-solid fa-shirt"></i>
          </span>
          <strong>Fashion</strong>
          <small>240 items</small>
        </a>

        <a href="#" class="category category-purple">
          <span class="category-icon">
            <i class="fa-solid fa-headphones"></i>
          </span>
          <strong>Audio</strong>
          <small>64 items</small>
        </a>

        <a href="#" class="category category-green">
          <span class="category-icon">
            <i class="fa-solid fa-shoe-prints"></i>
          </span>
          <strong>Shoes</strong>
          <small>94 items</small>
        </a>

        <a href="#" class="category category-yellow">
          <span class="category-icon">
            <i class="fa-solid fa-gem"></i>
          </span>
          <strong>Accessories</strong>
          <small>156 items</small>
        </a>

      </div>

    </section>


    <!-- PRODUCTS -->
    <section class="section container" id="shop">

      <div class="section-heading">

        <div>
          <span class="eyebrow">OUR PICKS</span>
          <h2>Popular right now</h2>
        </div>

        <a href="#">
          See all products
          <i class="fa-solid fa-arrow-right"></i>
        </a>

      </div>


      <div class="product-grid">

        <!-- PRODUCT 1 -->
        <article class="product-card">

          <div class="product-image">

            <span class="product-badge">New</span>

            <button class="wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
              alt="iPhone"
            >

          </div>

          <div class="product-info">

            <span class="product-category">Phones</span>

            <h3>iPhone 14 Pro</h3>

            <div class="rating">
              <span>★★★★★</span>
              <small>(128)</small>
            </div>

            <div class="product-bottom">

              <strong>$1,099</strong>

              <button class="add-cart">
                <i class="fa-solid fa-plus"></i>
              </button>

            </div>

          </div>

        </article>


        <!-- PRODUCT 2 -->
        <article class="product-card">

          <div class="product-image">

            <span class="product-badge sale">-20%</span>

            <button class="wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=700&q=85"
              alt="Laptop"
            >

          </div>

          <div class="product-info">

            <span class="product-category">Technology</span>

            <h3>MacBook Air</h3>

            <div class="rating">
              <span>★★★★★</span>
              <small>(86)</small>
            </div>

            <div class="product-bottom">

              <div>
                <strong>$999</strong>
                <del>$1,199</del>
              </div>

              <button class="add-cart">
                <i class="fa-solid fa-plus"></i>
              </button>

            </div>

          </div>

        </article>


        <!-- PRODUCT 3 -->
        <article class="product-card">

          <div class="product-image">

            <button class="wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
              alt="Nike shoes"
            >

          </div>

          <div class="product-info">

            <span class="product-category">Shoes</span>

            <h3>Air Max Sneakers</h3>

            <div class="rating">
              <span>★★★★★</span>
              <small>(214)</small>
            </div>

            <div class="product-bottom">

              <strong>$150</strong>

              <button class="add-cart">
                <i class="fa-solid fa-plus"></i>
              </button>

            </div>

          </div>

        </article>


        <!-- PRODUCT 4 -->
        <article class="product-card">

          <div class="product-image">

            <span class="product-badge">Popular</span>

            <button class="wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
              alt="Headphones"
            >

          </div>

          <div class="product-info">

            <span class="product-category">Audio</span>

            <h3>Wireless Headphones</h3>

            <div class="rating">
              <span>★★★★★</span>
              <small>(156)</small>
            </div>

            <div class="product-bottom">

              <strong>$399</strong>

              <button class="add-cart">
                <i class="fa-solid fa-plus"></i>
              </button>

            </div>

          </div>

        </article>

      </div>

    </section>


    <!-- DEAL -->
    <section class="deal-section container" id="deals">

      <div class="deal-content">

        <span class="deal-label">
          ⚡ LIMITED TIME
        </span>

        <h2>
          A little treat,
          <span>just for you.</span>
        </h2>

        <p>
          Get up to 40% off selected favorites.
          Because shopping should feel good.
        </p>

        <div class="countdown">

          <div>
            <strong>02</strong>
            <small>Days</small>
          </div>

          <div>
            <strong>14</strong>
            <small>Hours</small>
          </div>

          <div>
            <strong>36</strong>
            <small>Minutes</small>
          </div>

          <div>
            <strong>22</strong>
            <small>Seconds</small>
          </div>

        </div>

        <a href="#" class="btn btn-dark">
          Shop the sale
          <i class="fa-solid fa-arrow-right"></i>
        </a>

      </div>


      <div class="deal-image">

        <div class="deal-circle"></div>

        <img
          src="https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?auto=format&fit=crop&w=900&q=85"
          alt="Fashion collection"
        >

        <div class="discount-card">
          <strong>40%</strong>
          <span>OFF</span>
        </div>

      </div>

    </section>


    <!-- TESTIMONIALS -->
    <section class="section container" id="about">

      <div class="center-heading">

        <span class="eyebrow">HAPPY SHOPPERS</span>

        <h2>Kind words from our community</h2>

        <p>
          Real people. Real purchases. Real smiles.
        </p>

      </div>


      <div class="review-grid">

        <div class="review-card">

          <div class="review-stars">
            ★★★★★
          </div>

          <p>
            "Everything arrived beautifully packed.
            The whole experience felt so easy and personal!"
          </p>

          <div class="review-user">
            <div class="avatar">AM</div>

            <div>
              <strong>Ava Martin</strong>
              <small>Verified shopper</small>
            </div>
          </div>

        </div>


        <div class="review-card">

          <div class="review-stars">
            ★★★★★
          </div>

          <p>
            "Found exactly what I needed and the delivery
            was incredibly quick. Definitely coming back."
          </p>

          <div class="review-user">
            <div class="avatar mint">ML</div>

            <div>
              <strong>Michael Lee</strong>
              <small>Verified shopper</small>
            </div>
          </div>

        </div>


        <div class="review-card">

          <div class="review-stars">
            ★★★★★
          </div>

          <p>
            "The website is beautiful, products are great,
            and checkout was super smooth."
          </p>

          <div class="review-user">
            <div class="avatar purple">SK</div>

            <div>
              <strong>Sarah Kim</strong>
              <small>Verified shopper</small>
            </div>
          </div>

        </div>

      </div>

    </section>


    <!-- NEWSLETTER -->
    <section class="newsletter container">

      <div class="newsletter-icon">
        ✉️
      </div>

      <div>
        <span class="eyebrow">STAY IN THE LOOP</span>

        <h2>Good finds, delivered.</h2>

        <p>
          Get new arrivals, special offers and happy little surprises.
        </p>
      </div>

      <form class="subscribe">

        <input
          type="email"
          placeholder="Your email address"
        >

        <button type="submit">
          Subscribe
          <i class="fa-solid fa-arrow-right"></i>
        </button>

      </form>

    </section>

  </main>


  <!-- FOOTER -->
  <footer>

    <div class="container footer-grid">

      <div class="footer-brand">

        <a href="#" class="logo">
          <span class="logo-icon">
            <i class="fa-solid fa-bag-shopping"></i>
          </span>
          Nexus<span>Shop</span>
        </a>

        <p>
          Shopping made a little happier.
          Discover things you'll love.
        </p>

        <div class="socials">
          <a href="#"><i class="fa-brands fa-instagram"></i></a>
          <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
          <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
          <a href="#"><i class="fa-brands fa-pinterest-p"></i></a>
        </div>

      </div>


      <div class="footer-column">

        <h4>Shop</h4>

        <a href="#">All products</a>
        <a href="#">New arrivals</a>
        <a href="#">Best sellers</a>
        <a href="#">Deals</a>

      </div>


      <div class="footer-column">

        <h4>Help</h4>

        <a href="#">Help center</a>
        <a href="#">Shipping</a>
        <a href="#">Returns</a>
        <a href="#">Contact us</a>

      </div>


      <div class="footer-column">

        <h4>Company</h4>

        <a href="#">About us</a>
        <a href="#">Careers</a>
        <a href="#">Our story</a>
        <a href="#">Press</a>

      </div>

    </div>


    <div class="container footer-bottom">

      <span>
        © 2026 NexusShop. Made with ♥
      </span>

      <div>
        <a href="#">Privacy</a>
        <a href="#">Terms</a>
      </div>

    </div>

  </footer>

</body>
</html>

CSS
/* =========================================
   NEXUSSHOP — PLAYFUL FRIENDLY UI
========================================= */

:root {

  --cream: #fffaf5;
  --white: #ffffff;

  --text: #25221f;
  --muted: #817a73;

  --orange: #ff8a65;
  --orange-dark: #ed704c;
  --orange-light: #fff0e9;

  --yellow: #ffd166;
  --yellow-light: #fff7d9;

  --mint: #bdebd7;
  --mint-dark: #4fa982;

  --blue: #c9e8ff;
  --blue-dark: #4f91bd;

  --pink: #ffd3df;
  --pink-dark: #c76c87;

  --purple: #ded2ff;
  --purple-dark: #866bc7;

  --border: #eee6df;

  --shadow:
    0 12px 40px rgba(51, 42, 35, 0.07);

  --shadow-hover:
    0 20px 50px rgba(51, 42, 35, 0.12);

  --radius: 24px;
  --radius-small: 16px;

  --container: 1240px;

  --heading:
    "Plus Jakarta Sans",
    sans-serif;

  --body:
    "DM Sans",
    sans-serif;
}


/* =========================================
   RESET
========================================= */

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
}

body {
  background: var(--cream);
  color: var(--text);
  font-family: var(--body);
  line-height: 1.6;
  overflow-x: hidden;
}

img {
  display: block;
  max-width: 100%;
}

a {
  color: inherit;
  text-decoration: none;
}

button,
input {
  font: inherit;
}

button {
  cursor: pointer;
}

.container {
  width: min(var(--container), calc(100% - 40px));
  margin-inline: auto;
}


/* =========================================
   HEADER
========================================= */

.header {
  height: 82px;
  background: rgba(255, 250, 245, 0.92);
  backdrop-filter: blur(15px);
  border-bottom: 1px solid var(--border);

  position: sticky;
  top: 0;
  z-index: 100;
}

.nav {
  height: 100%;

  display: flex;
  align-items: center;
  justify-content: space-between;

  gap: 35px;
}


/* LOGO */

.logo {
  display: flex;
  align-items: center;
  gap: 9px;

  font-family: var(--heading);
  font-size: 21px;
  font-weight: 800;
  white-space: nowrap;
}

.logo > span:last-child {
  color: var(--orange);
}

.logo-icon {
  width: 39px;
  height: 39px;

  display: grid;
  place-items: center;

  background: var(--orange);
  color: white;

  border-radius: 12px;

  transform: rotate(-5deg);
}

.logo-icon i {
  transform: rotate(5deg);
}


/* MENU */

.desktop-menu {
  display: flex;
  align-items: center;
  gap: 6px;
}

.desktop-menu a {
  padding: 9px 15px;

  border-radius: 30px;

  color: #69625c;
  font-size: 14px;
  font-weight: 600;

  transition: 0.2s ease;
}

.desktop-menu a:hover,
.desktop-menu a.active {
  background: var(--orange-light);
  color: var(--orange-dark);
}


/* NAV RIGHT */

.nav-right {
  display: flex;
  align-items: center;
  gap: 8px;
}

.search-box {
  width: 210px;
  height: 42px;

  display: flex;
  align-items: center;
  gap: 9px;

  padding: 0 14px;

  background: white;
  border: 1px solid var(--border);
  border-radius: 50px;
}

.search-box i {
  color: #aaa19a;
  font-size: 13px;
}

.search-box input {
  width: 100%;

  border: 0;
  outline: 0;

  background: transparent;

  color: var(--text);
  font-size: 13px;
}

.search-box input::placeholder {
  color: #aaa19a;
}


.nav-icon,
.cart-btn {
  width: 42px;
  height: 42px;

  border: 0;
  border-radius: 50%;

  display: grid;
  place-items: center;

  transition: 0.2s ease;
}

.nav-icon {
  background: transparent;
  color: var(--text);
}

.nav-icon:hover {
  background: var(--orange-light);
  color: var(--orange-dark);
}


.cart-btn {
  position: relative;

  background: var(--text);
  color: white;
}

.cart-btn:hover {
  background: var(--orange);
}

.cart-btn span {
  position: absolute;

  top: -4px;
  right: -3px;

  width: 18px;
  height: 18px;

  display: grid;
  place-items: center;

  border-radius: 50%;

  background: var(--orange);
  color: white;

  font-size: 10px;
  font-weight: 700;
}

.mobile-menu {
  display: none;

  width: 42px;
  height: 42px;

  border: 0;
  border-radius: 12px;

  background: var(--orange-light);
  color: var(--orange-dark);
}


/* =========================================
   HERO
========================================= */

.hero {
  min-height: 570px;

  margin-top: 30px;

  padding: 60px;

  display: grid;
  grid-template-columns: 1fr 1fr;
  align-items: center;

  background:
    radial-gradient(
      circle at 80% 20%,
      #fff3cc 0,
      transparent 28%
    ),
    linear-gradient(
      135deg,
      #fff2e8,
      #fffaf5
    );

  border-radius: 34px;

  overflow: hidden;

  position: relative;
}


/* HERO TEXT */

.hero-content {
  position: relative;
  z-index: 3;
}

.small-label {
  width: fit-content;

  display: flex;
  align-items: center;
  gap: 8px;

  margin-bottom: 18px;

  color: var(--orange-dark);

  font-size: 12px;
  font-weight: 800;

  letter-spacing: 1.5px;
}

.small-label span {
  width: 25px;
  height: 25px;

  display: grid;
  place-items: center;

  border-radius: 50%;

  background: white;
}


.hero h1 {
  max-width: 600px;

  font-family: var(--heading);
  font-size: clamp(45px, 5vw, 70px);
  line-height: 1.05;

  letter-spacing: -3px;
}

.hero h1 span {
  color: var(--orange);
}

.hero-content > p {
  max-width: 490px;

  margin-top: 22px;

  color: var(--muted);

  font-size: 17px;
  line-height: 1.7;
}


/* BUTTONS */

.hero-buttons {
  display: flex;
  align-items: center;
  gap: 12px;

  margin-top: 30px;
}

.btn {
  min-height: 50px;

  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;

  padding: 0 22px;

  border-radius: 14px;

  font-size: 14px;
  font-weight: 700;

  transition: 0.2s ease;
}

.btn-primary {
  background: var(--orange);
  color: white;

  box-shadow:
    0 10px 25px rgba(255, 138, 101, 0.25);
}

.btn-primary:hover {
  background: var(--orange-dark);
  transform: translateY(-2px);
}

.btn-light {
  background: white;
  color: var(--text);

  border: 1px solid var(--border);
}

.btn-light:hover {
  border-color: var(--orange);
}


/* TRUST */

.hero-trust {
  display: flex;
  align-items: center;
  gap: 12px;

  margin-top: 38px;
}

.avatars {
  display: flex;
}

.avatars span {
  width: 34px;
  height: 34px;

  display: grid;
  place-items: center;

  margin-left: -7px;

  border: 3px solid #fff8f2;

  border-radius: 50%;

  background: white;

  font-size: 16px;
}

.avatars span:first-child {
  margin-left: 0;
}

.hero-trust strong,
.hero-trust small {
  display: block;
}

.hero-trust strong {
  font-size: 12px;
}

.hero-trust small {
  color: var(--muted);
  font-size: 10px;
}


/* =========================================
   HERO VISUAL
========================================= */

.hero-visual {
  min-height: 430px;

  position: relative;

  display: flex;
  align-items: center;
  justify-content: center;
}


.shape {
  position: absolute;

  border-radius: 50%;
}

.shape-one {
  width: 380px;
  height: 380px;

  background: var(--yellow);

  opacity: 0.75;
}

.shape-two {
  width: 280px;
  height: 280px;

  border: 35px solid rgba(255,255,255,.5);
}


/* MAIN PRODUCT */

.main-product {
  width: 330px;

  padding: 12px;

  background: white;

  border-radius: 28px;

  position: relative;
  z-index: 3;

  transform: rotate(3deg);

  box-shadow:
    0 30px 70px rgba(76, 56, 39, .18);
}

.main-product img {
  width: 100%;
  height: 330px;

  object-fit: cover;

  border-radius: 21px;
}

.floating-tag {
  position: absolute;

  top: 25px;
  left: 25px;

  padding: 8px 12px;

  background: white;

  border-radius: 50px;

  color: var(--orange-dark);

  font-size: 11px;
  font-weight: 800;

  box-shadow: 0 8px 20px rgba(0,0,0,.08);
}

.hero-product-info {
  padding: 15px 8px 6px;

  display: flex;
  justify-content: space-between;
  align-items: center;
}

.hero-product-info small {
  color: var(--muted);
  font-size: 10px;
}

.hero-product-info h3 {
  margin-top: 2px;

  font-family: var(--heading);
  font-size: 16px;
}

.hero-product-info > strong {
  color: var(--orange-dark);
  font-size: 18px;
}


/* FLOATING CARDS */

.floating-product {
  position: absolute;
  z-index: 5;

  display: flex;
  align-items: center;
  gap: 10px;

  padding: 12px 15px;

  background: white;

  border-radius: 16px;

  box-shadow: var(--shadow);

  animation: float 4s ease-in-out infinite;
}

.floating-product span {
  width: 40px;
  height: 40px;

  display: grid;
  place-items: center;

  border-radius: 12px;

  background: var(--orange-light);

  font-size: 20px;
}

.floating-product strong,
.floating-product small {
  display: block;
}

.floating-product strong {
  font-size: 11px;
}

.floating-product small {
  color: var(--orange-dark);
  font-size: 10px;
  font-weight: 700;
}

.floating-product-one {
  top: 40px;
  right: 0;
}

.floating-product-two {
  bottom: 45px;
  left: 5px;

  animation-delay: -2s;
}

@keyframes float {

  0%,
  100% {
    transform: translateY(0);
  }

  50% {
    transform: translateY(-10px);
  }

}


/* =========================================
   SECTIONS
========================================= */

.section {
  padding-top: 95px;
}

.section-heading {
  display: flex;
  justify-content: space-between;
  align-items: end;

  margin-bottom: 30px;
}

.eyebrow {
  display: block;

  margin-bottom: 6px;

  color: var(--orange-dark);

  font-size: 10px;
  font-weight: 800;

  letter-spacing: 2px;
}

.section-heading h2,
.center-heading h2 {
  font-family: var(--heading);
  font-size: 30px;
  letter-spacing: -1px;
}

.section-heading > a {
  display: flex;
  align-items: center;
  gap: 8px;

  color: var(--muted);

  font-size: 13px;
  font-weight: 700;
}

.section-heading > a:hover {
  color: var(--orange-dark);
}


/* =========================================
   CATEGORIES
========================================= */

.category-list {
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  gap: 15px;
}

.category {
  min-height: 155px;

  padding: 20px 15px;

  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;

  border-radius: 20px;

  transition: 0.25s ease;
}

.category:hover {
  transform: translateY(-5px);
  box-shadow: var(--shadow);
}

.category-icon {
  width: 60px;
  height: 60px;

  display: grid;
  place-items: center;

  margin-bottom: 13px;

  border-radius: 18px;

  font-size: 21px;
}

.category strong {
  font-family: var(--heading);
  font-size: 13px;
}

.category small {
  margin-top: 2px;

  color: var(--muted);

  font-size: 10px;
}


/* CATEGORY COLORS */

.category-orange {
  background: #fff0e9;
}

.category-orange .category-icon {
  background: #ffd8ca;
  color: var(--orange-dark);
}

.category-blue {
  background: #edf7ff;
}

.category-blue .category-icon {
  background: var(--blue);
  color: var(--blue-dark);
}

.category-pink {
  background: #fff0f4;
}

.category-pink .category-icon {
  background: var(--pink);
  color: var(--pink-dark);
}

.category-purple {
  background: #f5f1ff;
}

.category-purple .category-icon {
  background: var(--purple);
  color: var(--purple-dark);
}

.category-green {
  background: #edfaf4;
}

.category-green .category-icon {
  background: var(--mint);
  color: var(--mint-dark);
}

.category-yellow {
  background: #fff9e6;
}

.category-yellow .category-icon {
  background: var(--yellow);
  color: #9a7712;
}


/* =========================================
   PRODUCTS
========================================= */

.product-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}

.product-card {
  background: white;

  border: 1px solid var(--border);

  border-radius: 22px;

  overflow: hidden;

  transition: 0.25s ease;
}

.product-card:hover {
  transform: translateY(-6px);
  box-shadow: var(--shadow-hover);
}


/* IMAGE */

.product-image {
  height: 260px;

  background: #f7f4f1;

  position: relative;

  overflow: hidden;
}

.product-image img {
  width: 100%;
  height: 100%;

  object-fit: cover;

  transition: transform .5s ease;
}

.product-card:hover .product-image img {
  transform: scale(1.05);
}

.product-badge {
  position: absolute;

  top: 13px;
  left: 13px;

  z-index: 2;

  padding: 6px 10px;

  background: var(--orange);
  color: white;

  border-radius: 50px;

  font-size: 9px;
  font-weight: 800;
}

.product-badge.sale {
  background: #62b58c;
}

.wishlist {
  position: absolute;

  top: 12px;
  right: 12px;

  z-index: 2;

  width: 36px;
  height: 36px;

  display: grid;
  place-items: center;

  border: 0;
  border-radius: 50%;

  background: rgba(255,255,255,.9);

  color: #68615b;

  transition: .2s;
}

.wishlist:hover {
  color: var(--orange);
  transform: scale(1.1);
}


/* PRODUCT INFO */

.product-info {
  padding: 17px;
}

.product-category {
  color: #a09992;

  font-size: 10px;
  font-weight: 700;

  text-transform: uppercase;
  letter-spacing: .8px;
}

.product-info h3 {
  margin-top: 4px;

  font-family: var(--heading);
  font-size: 16px;
}

.rating {
  display: flex;
  align-items: center;
  gap: 5px;

  margin-top: 7px;
}

.rating span {
  color: #f5b93e;

  font-size: 11px;
  letter-spacing: 1px;
}

.rating small {
  color: #aaa19a;
  font-size: 10px;
}

.product-bottom {
  min-height: 45px;

  display: flex;
  align-items: center;
  justify-content: space-between;

  margin-top: 13px;
}

.product-bottom strong {
  font-size: 18px;
}

.product-bottom del {
  margin-left: 5px;

  color: #aaa19a;

  font-size: 10px;
}

.add-cart {
  width: 38px;
  height: 38px;

  display: grid;
  place-items: center;

  border: 0;
  border-radius: 12px;

  background: var(--text);
  color: white;

  transition: .2s;
}

.add-cart:hover {
  background: var(--orange);
  transform: rotate(5deg);
}


/* =========================================
   DEAL SECTION
========================================= */

.deal-section {
  min-height: 400px;

  margin-top: 100px;

  padding: 50px 65px;

  display: grid;
  grid-template-columns: 1fr 1fr;
  align-items: center;

  overflow: hidden;

  background:
    linear-gradient(
      120deg,
      #ffe6d8,
      #fff3c8
    );

  border-radius: 30px;

  position: relative;
}

.deal-content {
  position: relative;
  z-index: 2;
}

.deal-label {
  display: inline-block;

  padding: 7px 12px;

  background: white;

  border-radius: 50px;

  color: var(--orange-dark);

  font-size: 10px;
  font-weight: 800;
  letter-spacing: 1px;
}

.deal-content h2 {
  max-width: 450px;

  margin-top: 15px;

  font-family: var(--heading);
  font-size: 43px;
  line-height: 1.1;

  letter-spacing: -2px;
}

.deal-content h2 span {
  color: var(--orange-dark);
}

.deal-content > p {
  max-width: 440px;

  margin-top: 12px;

  color: var(--muted);

  font-size: 14px;
}


/* COUNTDOWN */

.countdown {
  display: flex;
  gap: 8px;

  margin: 23px 0;
}

.countdown div {
  min-width: 58px;

  padding: 9px;

  display: flex;
  flex-direction: column;
  align-items: center;

  background: rgba(255,255,255,.75);

  border-radius: 12px;
}

.countdown strong {
  font-size: 19px;
}

.countdown small {
  color: var(--muted);
  font-size: 8px;
  text-transform: uppercase;
}


.btn-dark {
  background: var(--text);
  color: white;
}

.btn-dark:hover {
  background: var(--orange);
}


/* DEAL IMAGE */

.deal-image {
  height: 330px;

  position: relative;

  display: flex;
  justify-content: center;
  align-items: center;
}

.deal-image img {
  width: 310px;
  height: 310px;

  object-fit: cover;

  border-radius: 50%;

  position: relative;
  z-index: 2;

  border: 12px solid rgba(255,255,255,.6);
}

.deal-circle {
  width: 340px;
  height: 340px;

  position: absolute;

  border-radius: 50%;

  background: #ffc68d;
}

.discount-card {
  position: absolute;

  right: 0;
  bottom: 25px;

  z-index: 4;

  width: 90px;
  height: 90px;

  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;

  background: var(--orange);

  color: white;

  border-radius: 50%;

  transform: rotate(8deg);

  box-shadow: var(--shadow);
}

.discount-card strong {
  font-size: 27px;
  line-height: 1;
}

.discount-card span {
  font-size: 10px;
  font-weight: 800;
}


/* =========================================
   REVIEWS
========================================= */

.center-heading {
  text-align: center;

  margin-bottom: 35px;
}

.center-heading p {
  margin-top: 5px;

  color: var(--muted);

  font-size: 14px;
}

.review-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 18px;
}

.review-card {
  padding: 27px;

  background: white;

  border: 1px solid var(--border);

  border-radius: 22px;
}

.review-stars {
  color: #f5b93e;

  font-size: 13px;
  letter-spacing: 2px;
}

.review-card > p {
  min-height: 85px;

  margin-top: 15px;

  color: #615a54;

  font-size: 13px;
  line-height: 1.8;
}

.review-user {
  display: flex;
  align-items: center;
  gap: 10px;

  margin-top: 20px;
}

.avatar {
  width: 40px;
  height: 40px;

  display: grid;
  place-items: center;

  border-radius: 50%;

  background: var(--orange-light);
  color: var(--orange-dark);

  font-size: 11px;
  font-weight: 800;
}

.avatar.mint {
  background: #e0f5eb;
  color: var(--mint-dark);
}

.avatar.purple {
  background: #eee8ff;
  color: var(--purple-dark);
}

.review-user strong,
.review-user small {
  display: block;
}

.review-user strong {
  font-size: 12px;
}

.review-user small {
  color: var(--muted);
  font-size: 10px;
}


/* =========================================
   NEWSLETTER
========================================= */

.newsletter {
  margin-top: 100px;
  margin-bottom: 70px;

  padding: 40px 45px;

  display: grid;
  grid-template-columns: auto 1fr auto;
  align-items: center;
  gap: 25px;

  background: var(--text);
  color: white;

  border-radius: 25px;
}

.newsletter-icon {
  width: 58px;
  height: 58px;

  display: grid;
  place-items: center;

  background: var(--orange);

  border-radius: 18px;

  font-size: 25px;
}

.newsletter .eyebrow {
  color: #ffb099;
}

.newsletter h2 {
  font-family: var(--heading);
  font-size: 24px;
}

.newsletter p {
  margin-top: 3px;

  color: #aaa39c;

  font-size: 12px;
}

.subscribe {
  display: flex;

  padding: 5px;

  background: white;

  border-radius: 14px;
}

.subscribe input {
  width: 220px;

  padding: 0 13px;

  border: 0;
  outline: 0;

  background: transparent;

  font-size: 12px;
}

.subscribe button {
  height: 42px;

  padding: 0 17px;

  border: 0;
  border-radius: 10px;

  background: var(--orange);
  color: white;

  font-size: 11px;
  font-weight: 700;
}


/* =========================================
   FOOTER
========================================= */

footer {
  padding: 60px 0 20px;

  background: #f4eee8;

  border-top: 1px solid var(--border);
}

.footer-grid {
  display: grid;
  grid-template-columns: 2fr 1fr 1fr 1fr;
  gap: 50px;
}

.footer-brand p {
  max-width: 280px;

  margin-top: 13px;

  color: var(--muted);

  font-size: 12px;
}

.socials {
  display: flex;
  gap: 8px;

  margin-top: 20px;
}

.socials a {
  width: 34px;
  height: 34px;

  display: grid;
  place-items: center;

  background: white;

  border-radius: 10px;

  color: var(--text);

  font-size: 12px;

  transition: .2s;
}

.socials a:hover {
  background: var(--orange);
  color: white;
}

.footer-column h4 {
  margin-bottom: 13px;

  font-family: var(--heading);

  font-size: 13px;
}

.footer-column a {
  display: block;

  margin: 9px 0;

  color: var(--muted);

  font-size: 11px;
}

.footer-column a:hover {
  color: var(--orange-dark);
}

.footer-bottom {
  margin-top: 45px;
  padding-top: 18px;

  display: flex;
  justify-content: space-between;

  border-top: 1px solid #e4dcd4;

  color: var(--muted);

  font-size: 10px;
}

.footer-bottom div {
  display: flex;
  gap: 18px;
}


/* =========================================
   RESPONSIVE
========================================= */

@media (max-width: 1100px) {

  .desktop-menu {
    display: none;
  }

  .category-list {
    grid-template-columns: repeat(3, 1fr);
  }

  .product-grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .hero {
    padding: 45px;
  }

  .newsletter {
    grid-template-columns: auto 1fr;
  }

  .subscribe {
    grid-column: 1 / -1;
  }

}


@media (max-width: 800px) {

  .header {
    height: 70px;
  }

  .nav-right {
    display: none;
  }

  .mobile-menu {
    display: grid;
    place-items: center;
  }

  .hero {
    grid-template-columns: 1fr;

    padding: 45px 25px;

    text-align: center;
  }

  .small-label {
    margin-inline: auto;
  }

  .hero h1 {
    font-size: 48px;
  }

  .hero-content > p {
    margin-inline: auto;
  }

  .hero-buttons {
    justify-content: center;
  }

  .hero-trust {
    justify-content: center;
  }

  .hero-visual {
    min-height: 380px;
  }

  .deal-section {
    grid-template-columns: 1fr;

    padding: 45px 30px;

    text-align: center;
  }

  .deal-content h2,
  .deal-content > p {
    margin-inline: auto;
  }

  .countdown {
    justify-content: center;
  }

  .deal-image {
    margin-top: 20px;
  }

  .review-grid {
    grid-template-columns: 1fr;
  }

  .footer-grid {
    grid-template-columns: 1fr 1fr;
  }

}


@media (max-width: 550px) {

  .container {
    width: min(100% - 24px, var(--container));
  }

  .hero {
    margin-top: 12px;

    border-radius: 25px;

    padding: 40px 18px;
  }

  .hero h1 {
    font-size: 39px;
    letter-spacing: -2px;
  }

  .hero-content > p {
    font-size: 14px;
  }

  .hero-buttons {
    flex-direction: column;
  }

  .hero-buttons .btn {
    width: 100%;
  }

  .hero-visual {
    min-height: 330px;
  }

  .main-product {
    width: 250px;
  }

  .main-product img {
    height: 250px;
  }

  .shape-one {
    width: 290px;
    height: 290px;
  }

  .shape-two {
    width: 220px;
    height: 220px;
  }

  .floating-product {
    transform: scale(.8);
  }

  .floating-product-one {
    right: -15px;
  }

  .floating-product-two {
    left: -15px;
  }

  .section {
    padding-top: 65px;
  }

  .section-heading {
    align-items: start;
    flex-direction: column;
    gap: 10px;
  }

  .section-heading h2,
  .center-heading h2 {
    font-size: 25px;
  }

  .category-list {
    grid-template-columns: repeat(2, 1fr);
  }

  .category {
    min-height: 135px;
  }

  .product-grid {
    grid-template-columns: 1fr;
  }

  .product-image {
    height: 300px;
  }

  .deal-section {
    margin-top: 65px;
  }

  .deal-content h2 {
    font-size: 35px;
  }

  .deal-image img {
    width: 240px;
    height: 240px;
  }

  .deal-circle {
    width: 270px;
    height: 270px;
  }

  .discount-card {
    right: 5px;
  }

  .newsletter {
    margin-top: 65px;
    padding: 30px 20px;

    grid-template-columns: 1fr;

    text-align: center;
  }

  .newsletter-icon {
    margin-inline: auto;
  }

  .subscribe {
    width: 100%;
  }

  .subscribe input {
    min-width: 0;
    width: 100%;
  }

  .footer-grid {
    grid-template-columns: 1fr 1fr;
    gap: 35px 20px;
  }

  .footer-brand {
    grid-column: 1 / -1;
  }

  .footer-bottom {
    flex-direction: column;
    gap: 10px;
  }

}


This version is intentionally visually different from your original: less “rounded cozy cards everywhere,” more playful marketplace + editorial hero + colorful category system. You can put the HTML in index.html and CSS in style.css.
