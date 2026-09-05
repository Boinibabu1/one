Here is a fresh, user-friendly HTML/CSS code for a modern e-commerce shop interface. It features a warm color palette, clear product displays, and interactive elements for a pleasant browsing experience.
```html
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · friendly e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,400;0,500;0,600;0,700;1,400&family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----------------------------------------------
       FRIENDLY & WARM DESIGN SYSTEM (refreshed UI)
    ------------------------------------------------ */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #faf7f2;
      --card-bg: #ffffff;
      --primary: #2a2620;
      --secondary: #6e6257;
      --accent: #f7a072;      /* warm peach */
      --accent-soft: #fde8d8;
      --muted: #8f847b;
      --surface: #f5f0eb;
      --success: #6b9e7b;
      --radius-xl: 32px;
      --radius-lg: 20px;
      --radius-md: 14px;
      --shadow-soft: 0 12px 30px rgba(45, 42, 36, 0.06);
      --shadow-hover: 0 20px 40px rgba(45, 42, 36, 0.10);
      --container: 1200px;
      --font-body: 'Inter', -apple-system, system-ui, sans-serif;
      --font-heading: 'Quicksand', 'Inter', sans-serif;
    }

    html, body {
      height: 100%;
    }

    body {
      font-family: var(--font-body);
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 20px;
    }

    /* ----- HEADER (warm, welcoming) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 40;
      background: rgba(255, 252, 248, 0.92);
      backdrop-filter: blur(6px);
      border-bottom: 1px solid rgba(124, 111, 100, 0.10);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 12px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-family: var(--font-heading);
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
      color: var(--primary);
    }
    .brand .accent {
      color: var(--accent);
    }
    .brand i {
      font-size: 26px;
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: 0.15s;
    }
    nav.main-nav li a:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }
    nav.main-nav li a i {
      font-size: 1rem;
    }

    .search {
      display: flex;
      align-items: center;
      background: white;
      padding: 6px 14px 6px 18px;
      border-radius: 60px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
      border: 1px solid rgba(124, 111, 100, 0.12);
      transition: 0.2s;
      min-width: 220px;
    }
    .search:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(247, 160, 114, 0.12);
    }
    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 0.9rem;
      padding: 8px 0;
    }
    .search button {
      background: transparent;
      border: 0;
      color: var(--secondary);
      cursor: pointer;
      font-size: 1rem;
      padding: 4px;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      background: transparent;
      border: 0;
      padding: 8px 10px;
      border-radius: 40px;
      color: var(--primary);
      font-size: 1.2rem;
      cursor: pointer;
      transition: 0.15s;
    }
    .icon-btn:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .cart {
      position: relative;
      display: flex;
      align-items: center;
      gap: 4px;
      padding: 8px 12px;
      border-radius: 40px;
      background: var(--accent-soft);
      transition: 0.15s;
    }
    .cart:hover {
      background: #fcdccc;
    }
    .cart-count {
      background: var(--accent);
      color: white;
      font-size: 12px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 40px;
      display: inline-grid;
      place-items: center;
      margin-left: 2px;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.5rem;
      color: var(--primary);
      cursor: pointer;
      padding: 4px 8px;
    }

    /* ----- HERO (friendly illustration) ----- */
    .hero {
      background: linear-gradient(145deg, #f5ede6, #fcf5ee);
      border-radius: var(--radius-xl);
      margin: 20px 20px 0;
      padding: 48px 32px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
      box-shadow: var(--shadow-soft);
      border: 1px solid rgba(255,255,240,0.5);
    }
    .hero-content {
      flex: 1 1 300px;
    }
    .hero-content h1 {
      font-family: var(--font-heading);
      font-size: 2.5rem;
      font-weight: 700;
      line-height: 1.2;
      margin-bottom: 12px;
      color: var(--primary);
    }
    .hero-content h1 span {
      color: var(--accent);
    }
    .hero-content p {
      color: var(--secondary);
      max-width: 460px;
      margin-bottom: 24px;
      font-size: 1.05rem;
    }
    .hero-emoji {
      font-size: 4.5rem;
      line-height: 1;
      filter: drop-shadow(0 6px 12px rgba(247, 160, 114, 0.2));
      flex: 0 0 auto;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 24px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      border: 0;
      transition: 0.15s;
    }
    .btn-primary {
      background: var(--accent);
      color: #2d2a24;
    }
    .btn-primary:hover {
      background: #e88a5a;
      transform: scale(1.02);
      box-shadow: 0 8px 18px rgba(247, 160, 114, 0.25);
    }
    .btn-ghost {
      background: transparent;
      border: 2px solid rgba(45, 42, 36, 0.12);
      color: var(--primary);
    }
    .btn-ghost:hover {
      background: white;
      border-color: var(--accent);
    }

    /* ----- SECTION TITLES (friendly) ----- */
    .section {
      padding: 48px 0 24px;
    }
    .section .title {
      text-align: center;
      margin-bottom: 28px;
    }
    .section .title h2 {
      font-family: var(--font-heading);
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section .title p {
      color: var(--muted);
      margin-top: 4px;
    }

    /* ----- CATEGORIES (round, playful) ----- */
    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: white;
      border-radius: 60px 60px 30px 30px;
      padding: 22px 10px 18px;
      text-align: center;
      box-shadow: var(--shadow-soft);
      transition: 0.2s;
      cursor: pointer;
      border: 1px solid rgba(255,255,240,0.5);
    }
    .cat-card:hover {
      transform: translateY(-6px) scale(1.01);
      box-shadow: var(--shadow-hover);
      background: #fffbf7;
    }
    .cat-card .icon {
      font-size: 2rem;
      color: var(--accent);
      margin-bottom: 6px;
      background: var(--accent-soft);
      width: 64px;
      height: 64px;
      display: grid;
      place-items: center;
      border-radius: 40px;
      margin-inline: auto;
    }
    .cat-card h4 {
      margin-top: 8px;
      font-family: var(--font-heading);
      font-weight: 600;
      font-size: 1rem;
    }

    /* ----- PRODUCTS (cozy cards) ----- */
    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product {
      background: white;
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-soft);
      transition: 0.2s;
      border: 1px solid rgba(255,255,240,0.3);
      display: flex;
      flex-direction: column;
    }
    .product:hover {
      transform: translateY(-5px);
      box-shadow: var(--shadow-hover);
    }
    .product img {
      width: 100%;
      height: 190px;
      object-fit: cover;
      background: #f2ede8;
    }
    .product-body {
      padding: 14px 16px 6px;
      flex: 1;
    }
    .product-body h5 {
      font-family: var(--font-heading);
      font-weight: 600;
      font-size: 1.05rem;
      margin: 0 0 4px;
    }
    .product-body .category-tag {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: capitalize;
      margin-bottom: 6px;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 4px;
    }
    .price {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.85rem;
      margin-left: 6px;
      font-weight: 400;
    }
    .rating {
      color: #f7b731;
      font-size: 0.85rem;
      letter-spacing: 1px;
    }
    .product-footer {
      padding: 10px 16px 16px;
      display: flex;
      gap: 10px;
      align-items: center;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px 0;
      border-radius: 60px;
      cursor: pointer;
      font-weight: 600;
      font-size: 0.9rem;
      transition: 0.15s;
    }
    .add-btn:hover {
      background: var(--accent);
      color: #2d2a24;
    }
    .wish-btn {
      background: transparent;
      border: 1px solid rgba(0,0,0,0.04);
      padding: 8px 12px;
      border-radius: 60px;
      cursor: pointer;
      font-size: 1rem;
      transition: 0.15s;
    }
    .wish-btn:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    /* ----- DEAL (friendly flash) ----- */
    .deal {
      display: flex;
      gap: 24px;
      background: white;
      border-radius: var(--radius-xl);
      overflow: hidden;
      align-items: center;
      box-shadow: var(--shadow-soft);
      border: 1px solid rgba(255,255,240,0.4);
    }
    .deal img {
      width: 45%;
      height: 300px;
      object-fit: cover;
    }
    .deal .content {
      padding: 28px 30px;
      flex: 1;
    }
    .deal .content h3 {
      font-family: var(--font-heading);
      font-size: 1.8rem;
      font-weight: 700;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 12px;
      border-radius: var(--radius-md);
      min-width: 64px;
      text-align: center;
      font-weight: 600;
    }
    .time-box div:first-child {
      font-size: 1.6rem;
      font-weight: 700;
    }
    .time-box div:last-child {
      font-size: 0.7rem;
      opacity: 0.7;
    }

    .deal-discount {
      background: #f7a072;
      color: white;
      padding: 4px 14px;
      border-radius: 60px;
      font-weight: 700;
    }

    /* ----- TESTIMONIALS (soft) ----- */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
    }
    .testimonial {
      min-width: 280px;
      background: white;
      padding: 22px 20px;
      border-radius: var(--radius-lg);
      box-shadow: var(--shadow-soft);
      border: 1px solid rgba(255,255,240,0.4);
    }
    .testimonial .rating {
      font-size: 1.1rem;
      margin-bottom: 6px;
    }
    .testimonial p {
      font-style: italic;
      color: var(--secondary);
    }

    /* ----- NEWSLETTER (warm) ----- */
    .newsletter {
      background: var(--primary);
      color: white;
      border-radius: var(--radius-xl);
      padding: 40px 32px;
      text-align: center;
      background: linear-gradient(135deg, #3d352e, #2d2a24);
    }
    .newsletter h3 {
      font-family: var(--font-heading);
      font-size: 1.8rem;
      font-weight: 600;
    }
    .newsletter input {
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      width: 320px;
      max-width: 100%;
      margin-right: 8px;
      font-size: 0.95rem;
    }
    .newsletter .btn-primary {
      background: var(--accent);
      color: #2d2a24;
    }

    /* ----- FOOTER (friendly) ----- */
    footer {
      margin-top: 28px;
      padding: 36px 0 20px;
      border-top: 1px solid rgba(124, 111, 100, 0.12);
      color: var(--muted);
      font-size: 0.9rem;
    }

    /* ----- RESPONSIVE (friendly breakpoints) ----- */
    @media (max-width: 1024px) {
      .categories { grid-template-columns: repeat(3, 1fr); }
      .products { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 820px) {
      .search { min-width: 140px; }
      nav.main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .products { grid-template-columns: repeat(2, 1fr); }
      .categories { grid-template-columns: repeat(2, 1fr); }
      .deal { flex-direction: column; }
      .deal img { width: 100%; height: 200px; }
      .hero { flex-direction: column; text-align: center; }
      .hero-content p { max-width: 100%; }
    }
    @media (max-width: 500px) {
      .hero { margin: 12px; padding: 28px 16px; }
      .hero-content h1 { font-size: 1.9rem; }
      .products { grid-template-columns: 1fr; }
      .categories { grid-template-columns: 1fr 1fr; }
      .timer { flex-wrap: wrap; justify-content: center; }
      .newsletter input { width: 100%; margin: 0 0 10px; }
    }

    /* helpers */
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .gap-2 { gap: 8px; }
    .flex { display: flex; align-items: center; }
  </style>
</head>
<body>
  <!-- HEADER -->
  <header>
    <div class="container header-inner">
      <div class="flex" style="gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#">
          <i class="fas fa-store-alt"></i>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#about"><i class="fas fa-heart"></i> About</a></li>
        </ul>
      </nav>

      <div class="flex" style="gap:10px;">
        <div class="search" role="search">
          <input type="search" id="searchInput" placeholder="Search for anything…" aria-label="Search">
          <button id="searchBtn" aria-label="search"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <a class="icon-btn" href="#" aria-label="account"><i class="far fa-user"></i></a>
          <a class="icon-btn" href="#" aria-label="wishlist"><i class="far fa-heart"></i></a>
          <a class="cart" href="#" id="cartBtn" aria-label="cart">
            <i class="fas fa-shopping-bag"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background:white; border-top:1px solid rgba(0,0,0,0.04);">
      <div class="container" style="padding:16px 0;">
        <nav>
          <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:8px;">
            <li><a href="#">Home</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#">About</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO friendly -->
    <section class="hero container">
      <div class="hero-content">
        <h1>Hello, <span>friend!</span> <br>Discover something lovely.</h1>
        <p>Curated picks for your style — from tech to treasures. Fresh finds, warm prices.</p>
        <div style="display:flex; gap:12px; flex-wrap:wrap;">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Start shopping</button>
          <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
        </div>
      </div>
      <div class="hero-emoji">✨🛍️</div>
    </section>

    <!-- CATEGORIES -->
    <section class="section container" aria-labelledby="cat-title">
      <div class="title" id="cat-title">
        <h2>Browse by category</h2>
        <p class="muted">Find what makes you smile ✨</p>
      </div>
      <div class="categories" id="categoriesGrid" aria-live="polite"></div>
    </section>

    <!-- PRODUCTS -->
    <section class="section container" aria-labelledby="prod-title">
      <div class="title" id="prod-title">
        <h2>Trending now</h2>
        <p class="muted">Popular picks from our community</p>
      </div>
      <div class="products" id="productsGrid" aria-live="polite"></div>
    </section>

    <!-- DEAL -->
    <section id="deals" class="section container" aria-labelledby="deals-title">
      <div class="title" id="deals-title">
        <h2>Flash sale ⚡</h2>
        <p class="muted">Grab it before it's gone</p>
      </div>
      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" loading="lazy">
        <div class="content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Supercharged. Super slim. Super you.</p>
          <div class="timer" aria-hidden="true">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
          </div>
          <div style="display:flex; align-items:center; gap:16px; flex-wrap:wrap;">
            <div><span class="price">$999</span> <span class="old-price">$1,199</span></div>
            <span class="deal-discount">-17%</span>
          </div>
          <p style="margin:10px 0 0;">Only <strong>12</strong> items left — be quick!</p>
          <div style="margin-top:18px;">
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy now</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section container" aria-labelledby="test-title">
      <div class="title" id="test-title">
        <h2>Kind words</h2>
        <p class="muted">Real stories from real shoppers</p>
      </div>
      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p>"Super fast delivery and the team was so lovely. Will definitely come back!"</p>
          <div class="flex" style="gap:12px; margin-top:12px;">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&h=80&q=80" alt="Ava" style="width:44px; height:44px; border-radius:40px; object-fit:cover;">
            <div><div style="font-weight:600;">Ava Martin</div><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p>"Great selection and checkout was smooth. My new favourite shop."</p>
          <div class="flex" style="gap:12px; margin-top:12px;">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&h=80&q=80" alt="Michael" style="width:44px; height:44px; border-radius:40px; object-fit:cover;">
            <div><div style="font-weight:600;">Michael Lee</div><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section container" aria-labelledby="news-title">
      <div class="newsletter" id="newsletter">
        <h3 id="news-title">Stay in the loop 🌸</h3>
        <p style="opacity:0.8;">Exclusive offers & new arrivals — delivered with love.</p>
        <form id="newsletterForm" style="display:flex; justify-content:center; gap:8px; flex-wrap:wrap; margin-top:12px;">
          <input id="newsletterEmail" type="email" placeholder="Your email address" aria-label="Email" required>
          <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px; font-size:0.95rem; display:none;"></div>
      </div>
    </section>
  </main>

  <!-- FOOTER -->
  <footer>
    <div class="container" style="display:flex; flex-wrap:wrap; gap:32px; justify-content:space-between;">
      <div style="max-width:300px;">
        <div style="font-weight:700; font-size:1.3rem; font-family:var(--font-heading);"><i class="fas fa-store-alt" style="color:var(--accent);"></i> NexusShop</div>
        <p class="muted" style="margin-top:6px;">A friendly demo — built with care, for you.</p>
        <div style="margin-top:12px; display:flex; gap:12px;">
          <a class="icon-btn" href="#"><i class="fab fa-facebook"></i></a>
          <a class="icon-btn" href="#"><i class="fab fa-instagram"></i></a>
          <a class="icon-btn" href="#"><i class="fab fa-twitter"></i></a>
        </div>
      </div>
      <div style="display:flex; gap:40px; flex-wrap:wrap;">
        <div><div style="font-weight:600;">Company</div><div class="muted" style="line-height:2;">About<br>Careers<br>Press</div></div>
        <div><div style="font-weight:600;">Support</div><div class="muted" style="line-height:2;">Help Center<br>Shipping<br>Contact</div></div>
      </div>
    </div>
    <div style="text-align:center; margin-top:28px; color:var(--muted); font-size:0.8rem;">© <span id="year"></span> NexusShop · made with <i class="fas fa-heart" style="color:var(--accent);"></i></div>
  </footer>

  <script>
    // ----- DATA (friendly categories & products) -----
    const CATEGORIES = [
      { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
      { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
      { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
    ];

    // ----- RENDER -----
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    let cartCount = 0;

    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `
          <div class="icon"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="muted" style="font-size:0.75rem;">shop now →</div>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('prod-title').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product';
        el.innerHTML = `
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <div><span class="price">$${p.price.toLocaleString()}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
              <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:0.
