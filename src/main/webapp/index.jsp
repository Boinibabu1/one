<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>ManaswiShop — Premium Storefront</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">

  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
  >

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    :root {
      --bg: #f1f0eb;
      --paper: #ffffff;
      --ink: #151614;
      --muted: #70736d;
      --line: #dfdfd9;
      --accent: #e95a3d;
      --dark: #191a18;
      --soft: #ecebe5;
      --shell: 1240px;
      --shadow: 0 22px 60px rgba(18, 20, 17, 0.10);
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "DM Sans", Arial, sans-serif;
      background: var(--bg);
      color: var(--ink);
    }

    body.no-scroll {
      overflow: hidden;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button,
    input,
    select {
      font: inherit;
    }

    button {
      cursor: pointer;
    }

    .wrap {
      width: min(var(--shell), calc(100% - 36px));
      margin: auto;
    }

    /* TOP BAR */
    .announce {
      background: var(--dark);
      color: #fff;
      font-size: 10px;
    }

    .announce-in {
      height: 34px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 15px;
    }

    .announce i {
      color: #ff9e89;
      margin-right: 5px;
    }

    /* HEADER */
    .site-header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(241, 240, 235, 0.92);
      backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.07);
    }

    .header-main {
      min-height: 78px;
      display: flex;
      align-items: center;
      gap: 24px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      letter-spacing: -0.7px;
      font-size: 20px;
      white-space: nowrap;
    }

    .brand-mark {
      display: grid;
      place-items: center;
      width: 33px;
      height: 33px;
      background: var(--accent);
      color: #fff;
      border-radius: 10px;
      font-size: 14px;
    }

    .brand-accent {
      color: var(--accent);
    }

    #mainNav {
      display: flex;
      gap: 20px;
      font-size: 11px;
      font-weight: 700;
    }

    #mainNav a:hover {
      color: var(--accent);
    }

    .searchbar {
      margin-left: auto;
      width: 300px;
      height: 42px;
      border: 1px solid #d4d4ce;
      background: #fff;
      border-radius: 11px;
      display: flex;
      align-items: center;
      overflow: hidden;
    }

    .searchbar i {
      margin-left: 13px;
      color: #8d9089;
      font-size: 11px;
    }

    .searchbar input {
      flex: 1;
      border: 0;
      outline: 0;
      padding: 0 9px;
      font-size: 11px;
    }

    .searchbar button {
      height: 100%;
      border: 0;
      background: #22231f;
      color: #fff;
      padding: 0 13px;
      font-size: 9px;
      font-weight: 800;
    }

    .head-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }

    .head-icon,
    .bag-btn {
      position: relative;
      height: 40px;
      border: 0;
      background: transparent;
      border-radius: 10px;
      color: var(--ink);
    }

    .head-icon {
      width: 40px;
      display: grid;
      place-items: center;
    }

    .head-icon:hover,
    .bag-btn:hover {
      background: #fff;
    }

    .head-icon span,
    .bag-btn span {
      position: absolute;
      top: 1px;
      right: 0;
      background: var(--accent);
      color: #fff;
      border: 2px solid var(--bg);
      min-width: 16px;
      height: 16px;
      border-radius: 20px;
      display: grid;
      place-items: center;
      font-size: 8px;
      font-weight: 800;
    }

    .bag-btn {
      display: flex;
      align-items: center;
      gap: 7px;
      padding: 0 11px;
      font-size: 10px;
      font-weight: 700;
    }

    .mobile-menu,
    .mobile-nav {
      display: none;
    }

    /* HERO */
    .hero {
      margin-top: 28px;
      display: grid;
      grid-template-columns: 1fr 1fr;
      min-height: 590px;
      border-radius: 30px;
      overflow: hidden;
      background: #dedfd8;
    }

    .hero-copy {
      padding: 72px 60px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      background: linear-gradient(125deg, #ecebe5, #dedfd7);
    }

    .eyebrow,
    .mini-title {
      font-size: 9px;
      font-weight: 900;
      letter-spacing: 1.3px;
      color: var(--accent);
    }

    .hero h1 {
      font: 700 clamp(52px, 6vw, 79px) / 0.94 "Playfair Display", serif;
      letter-spacing: -3.7px;
      margin-top: 22px;
    }

    .hero h1 em {
      font-style: normal;
      color: var(--accent);
    }

    .hero p {
      max-width: 500px;
      color: #5e615b;
      font-size: 14px;
      line-height: 1.75;
      margin-top: 22px;
    }

    .hero-cta {
      display: flex;
      gap: 9px;
      flex-wrap: wrap;
      margin-top: 28px;
    }

    .btn {
      min-height: 44px;
      border-radius: 10px;
      padding: 0 17px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      border: 0;
      font-size: 10px;
      font-weight: 800;
    }

    .btn-dark {
      background: var(--dark);
      color: #fff;
    }

    .btn-light {
      background: #fff;
      border: 1px solid #d9d9d3;
      color: var(--ink);
    }

    .btn-dark:hover {
      background: #2a2c28;
    }

    .btn-light:hover {
      background: #f7f7f3;
    }

    .hero-points {
      display: flex;
      align-items: center;
      gap: 13px;
      margin-top: 38px;
    }

    .hero-points strong,
    .hero-points span {
      display: block;
    }

    .hero-points strong {
      font-size: 12px;
    }

    .hero-points span {
      color: #767971;
      font-size: 8px;
      margin-top: 2px;
    }

    .hero-points i {
      height: 28px;
      border-left: 1px solid rgba(0, 0, 0, 0.14);
    }

    .hero-image {
      position: relative;
      background:
        url("https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?auto=format&fit=crop&w=1300&q=90")
        center / cover;
    }

    .hero-image:after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(
        180deg,
        transparent 45%,
        rgba(0, 0, 0, 0.36)
      );
    }

    .hero-stamp {
      position: absolute;
      left: 20px;
      top: 20px;
      z-index: 2;
      background: #fff;
      padding: 11px 13px;
      border-radius: 12px;
      box-shadow: var(--shadow);
    }

    .hero-stamp b {
      font-size: 18px;
      display: block;
    }

    .hero-stamp span {
      font-size: 8px;
      color: #777;
      line-height: 1.2;
    }

    .hero-card {
      position: absolute;
      z-index: 2;
      left: 28px;
      bottom: 28px;
      background: #fffffff0;
      border-radius: 17px;
      padding: 18px 19px;
      min-width: 250px;
      box-shadow: var(--shadow);
    }

    .hero-card small {
      font-size: 8px;
      color: #7c7e77;
      font-weight: 800;
      letter-spacing: 1px;
    }

    .hero-card strong {
      display: block;
      font: 600 22px / 1.03 "Playfair Display";
      margin: 8px 0 13px;
    }

    .hero-card a {
      font-size: 9px;
      font-weight: 800;
      color: var(--accent);
    }

    /* CATEGORY */
    .category-band {
      padding: 78px 0 72px;
    }

    .section-top {
      display: flex;
      justify-content: space-between;
      align-items: end;
      gap: 20px;
      margin-bottom: 22px;
    }

    .section-top h2 {
      font: 700 38px / 1 "Playfair Display";
      letter-spacing: -1.7px;
      margin-top: 6px;
    }

    .section-top > p {
      color: var(--muted);
      font-size: 11px;
      max-width: 230px;
      line-height: 1.6;
      text-align: right;
    }

    .collection-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 13px;
    }

    .collection-card {
      height: 240px;
      border: 0;
      padding: 0;
      overflow: hidden;
      border-radius: 18px;
      position: relative;
      background: #ddd;
      text-align: left;
    }

    .collection-card img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }

    .collection-card:hover img {
      transform: scale(1.045);
    }

    .collection-shade {
      position: absolute;
      inset: 0;
      background: linear-gradient(
        180deg,
        transparent 35%,
        rgba(0, 0, 0, 0.58)
      );
    }

    .collection-copy {
      position: absolute;
      left: 17px;
      bottom: 18px;
      color: #fff;
    }

    .collection-copy small,
    .collection-copy b {
      display: block;
    }

    .collection-copy small {
      font-size: 9px;
      opacity: 0.78;
    }

    .collection-copy b {
      font-size: 19px;
      margin-top: 3px;
    }

    .collection-arrow {
      position: absolute;
      right: 15px;
      bottom: 16px;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: #fff;
      color: #222;
      font-size: 10px;
    }

    /* PRODUCTS */
    .dark-section {
      background: var(--dark);
      color: #fff;
      padding: 78px 0 85px;
    }

    .dark-top p {
      color: #979b93;
    }

    .filter-row {
      display: flex;
      gap: 7px;
      align-items: center;
      flex-wrap: wrap;
    }

    .filter {
      height: 34px;
      border: 1px solid #3e413b;
      background: transparent;
      color: #9b9f97;
      border-radius: 8px;
      padding: 0 11px;
      font-size: 9px;
      font-weight: 800;
    }

    .filter.active,
    .filter:hover {
      background: #fff;
      color: #171817;
      border-color: #fff;
    }

    #sortSelect {
      height: 34px;
      background: #222420;
      color: #fff;
      border: 1px solid #41443f;
      border-radius: 8px;
      padding: 0 10px;
      font-size: 9px;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 14px;
    }

    .product-card {
      background: #232520;
      border: 1px solid #373934;
      border-radius: 17px;
      overflow: hidden;
      transition: 0.2s;
    }

    .product-card:hover {
      transform: translateY(-4px);
      border-color: #555950;
    }

    .product-media {
      height: 270px;
      background: #292b27;
      position: relative;
      overflow: hidden;
    }

    .product-media img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }

    .product-card:hover .product-media img {
      transform: scale(1.04);
    }

    .product-badge {
      position: absolute;
      z-index: 2;
      left: 10px;
      top: 10px;
      background: var(--accent);
      color: #fff;
      padding: 6px 8px;
      border-radius: 7px;
      font-size: 7px;
      font-weight: 900;
    }

    .product-like {
      position: absolute;
      z-index: 3;
      right: 10px;
      top: 9px;
      width: 33px;
      height: 33px;
      border: 0;
      border-radius: 50%;
      background: #fff;
      color: #222;
    }

    .product-like.active {
      color: var(--accent);
    }

    .quick-add {
      position: absolute;
      z-index: 3;
      left: 10px;
      right: 10px;
      bottom: 10px;
      height: 37px;
      border: 0;
      border-radius: 9px;
      background: #fff;
      color: #171817;
      font-size: 9px;
      font-weight: 900;
      opacity: 0;
      transform: translateY(8px);
      transition: 0.2s;
    }

    .product-card:hover .quick-add {
      opacity: 1;
      transform: none;
    }

    .product-info {
      padding: 14px 13px;
    }

    .product-info > small {
      color: #8c9188;
      text-transform: uppercase;
      font-size: 8px;
      letter-spacing: 0.7px;
    }

    .product-info h3 {
      font-size: 14px;
      margin: 5px 0 7px;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }

    .rating {
      color: #ffb34f;
      font-size: 9px;
    }

    .rating span {
      color: #858a82;
      margin-left: 6px;
    }

    .product-bottom {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 12px;
    }

    .product-bottom strong {
      font-size: 16px;
    }

    .product-bottom del {
      font-size: 9px;
      color: #777d74;
      margin-left: 5px;
    }

    .round-add {
      width: 34px;
      height: 34px;
      border: 0;
      border-radius: 9px;
      background: #30332d;
      color: #fff;
    }

    .round-add:hover {
      background: var(--accent);
    }

    .empty-state {
      grid-column: 1 / -1;
      text-align: center;
      color: #999;
      padding: 50px;
    }

    /* PROMOS */
    .promo-grid {
      padding: 80px 0;
      display: grid;
      grid-template-columns: 1.4fr 0.6fr;
      gap: 14px;
    }

    .promo-card {
      border-radius: 22px;
      overflow: hidden;
      position: relative;
      min-height: 370px;
    }

    .promo-main {
      background: #d8d8d1;
      display: grid;
      grid-template-columns: 1fr 1fr;
    }

    .promo-content {
      padding: 42px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .promo-content h2 {
      font: 700 43px / 0.98 "Playfair Display";
      letter-spacing: -2px;
      margin: 8px 0 13px;
    }

    .promo-content h2 em,
    .promo-small h3 em {
      font-style: normal;
      color: var(--accent);
    }

    .promo-content p {
      font-size: 11px;
      color: #666a62;
      max-width: 290px;
      line-height: 1.6;
      margin-bottom: 20px;
    }

    .promo-main > img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .promo-small {
      background: #efe4d6;
      padding: 30px;
    }

    .promo-small h3 {
      font: 700 33px / 0.98 "Playfair Display";
      margin-top: 12px;
    }

    .flash-price {
      font-size: 20px;
      font-weight: 800;
      margin: 18px 0;
    }

    .flash-price del {
      font-size: 10px;
      color: #8a8b84;
      margin-left: 5px;
      font-weight: 400;
    }

    .promo-small img {
      position: absolute;
      width: 70%;
      height: 190px;
      object-fit: cover;
      right: -18px;
      bottom: -22px;
      border-radius: 16px;
      box-shadow: var(--shadow);
      transform: rotate(-6deg);
    }

    /* TRUST */
    .service-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      background: #fff;
      border: 1px solid var(--line);
      border-radius: 16px;
    }

    .service-grid > div {
      padding: 20px;
      display: grid;
      grid-template-columns: auto 1fr;
      column-gap: 11px;
      border-right: 1px solid var(--line);
    }

    .service-grid > div:last-child {
      border: 0;
    }

    .service-grid i {
      grid-row: 1 / 3;
      color: var(--accent);
      font-size: 19px;
    }

    .service-grid b {
      font-size: 11px;
    }

    .service-grid span {
      font-size: 9px;
      color: var(--muted);
      margin-top: 3px;
    }

    /* EDITORIAL */
    .editorial {
      padding: 85px 0;
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 60px;
      align-items: center;
    }

    .editorial-image {
      position: relative;
    }

    .editorial-image img {
      width: 100%;
      height: 430px;
      object-fit: cover;
      border-radius: 22px;
    }

    .editorial-tag {
      position: absolute;
      left: 18px;
      bottom: 18px;
      background: #fff;
      padding: 8px 10px;
      border-radius: 8px;
      font-size: 8px;
      font-weight: 900;
      letter-spacing: 1px;
    }

    .editorial-copy h2 {
      font: 700 43px / 1.02 "Playfair Display";
      letter-spacing: -2px;
      margin-top: 8px;
      max-width: 530px;
    }

    .editorial-copy p {
      color: var(--muted);
      font-size: 13px;
      line-height: 1.75;
      max-width: 500px;
      margin: 18px 0;
    }

    .editorial-list {
      margin: 20px 0 28px;
    }

    .editorial-list div {
      display: flex;
      align-items: center;
      gap: 9px;
      font-size: 11px;
      margin: 11px 0;
    }

    .editorial-list i {
      width: 18px;
      height: 18px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: #fff0eb;
      color: var(--accent);
      font-size: 8px;
    }

    /* REVIEWS */
    .review-section {
      padding-bottom: 75px;
    }

    .reviews {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 13px;
    }

    .reviews article {
      background: #fff;
      border: 1px solid var(--line);
      border-radius: 16px;
      padding: 20px;
    }

    .stars {
      color: #ffad4a;
      font-size: 11px;
    }

    .reviews p {
      font-size: 12px;
      line-height: 1.7;
      color: #525750;
      margin: 14px 0 18px;
    }

    .reviews strong,
    .reviews span {
      display: block;
    }

    .reviews strong {
      font-size: 11px;
    }

    .reviews span {
      font-size: 9px;
      color: var(--muted);
      margin-top: 3px;
    }

    /* NEWSLETTER */
    .newsletter {
      margin-bottom: 70px;
      background: #ded9cc;
      border-radius: 20px;
      padding: 32px 35px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 25px;
    }

    .newsletter h2 {
      font: 700 31px "Playfair Display";
      letter-spacing: -1px;
      margin: 6px 0;
    }

    .newsletter p {
      font-size: 10px;
      color: #686b64;
    }

    .newsletter form {
      display: flex;
      width: 410px;
    }

    .newsletter input {
      height: 44px;
      flex: 1;
      border: 0;
      border-radius: 10px 0 0 10px;
      padding: 0 13px;
      outline: 0;
    }

    .newsletter form button {
      border-radius: 0 10px 10px 0;
    }

    /* FOOTER */
    footer {
      background: var(--dark);
      color: #fff;
      padding: 44px 0 18px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 35px;
    }

    .footer-grid p,
    .footer-grid a {
      font-size: 10px;
      color: #adb1a9;
      display: block;
      line-height: 2.1;
    }

    .footer-grid p {
      max-width: 250px;
      margin-top: 9px;
    }

    .footer-grid h4 {
      font-size: 11px;
      margin-bottom: 7px;
    }

    .socials {
      display: flex;
      gap: 7px;
      margin-top: 15px;
    }

    .socials a {
      width: 28px;
      height: 28px;
      border: 1px solid #3b3e38;
      border-radius: 50%;
      display: grid;
      place-items: center;
    }

    .footer-bottom {
      margin-top: 31px;
      border-top: 1px solid #353833;
      padding-top: 14px;
      color: #858b82;
      font-size: 9px;
      display: flex;
      justify-content: space-between;
    }

    /* CART */
    .backdrop {
      display: none;
      position: fixed;
      inset: 0;
      background: rgba(0, 0, 0, 0.42);
      z-index: 80;
    }

    .backdrop.show {
      display: block;
    }

    .cart-panel {
      position: fixed;
      z-index: 90;
      right: 0;
      top: 0;
      height: 100%;
      width: min(390px, 100%);
      background: #fff;
      transform: translateX(100%);
      transition: 0.25s;
      padding: 22px;
      display: flex;
      flex-direction: column;
    }

    .cart-panel.open {
      transform: translateX(0);
    }

    .cart-head {
      display: flex;
      justify-content: space-between;
      border-bottom: 1px solid var(--line);
      padding-bottom: 14px;
    }

    .cart-head h3 {
      font: 700 21px "Playfair Display";
      margin-top: 4px;
    }

    .cart-items {
      flex: 1;
      overflow: auto;
    }

    .cart-item {
      display: grid;
      grid-template-columns: 56px 1fr auto;
      gap: 10px;
      align-items: center;
      padding: 13px 0;
      border-bottom: 1px solid var(--line);
    }

    .cart-item img {
      width: 56px;
      height: 56px;
      object-fit: cover;
      border-radius: 9px;
    }

    .cart-item strong {
      font-size: 11px;
    }

    .cart-item small {
      display: block;
      color: var(--muted);
      font-size: 9px;
      margin-top: 4px;
    }

    .cart-item button {
      border: 0;
      background: transparent;
      color: #999;
    }

    .cart-total {
      border-top: 1px solid var(--line);
      padding: 15px 0;
      display: flex;
      justify-content: space-between;
      font-size: 12px;
    }

    .cart-total strong {
      font-size: 16px;
    }

    .full {
      width: 100%;
    }

    .empty-cart {
      height: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      color: #999;
      gap: 7px;
    }

    .empty-cart i {
      font-size: 30px;
      color: #ccc;
    }

    .empty-cart strong {
      color: #444;
      font-size: 13px;
    }

    .empty-cart span {
      font-size: 10px;
    }

    /* TOAST */
    .toast {
      position: fixed;
      z-index: 120;
      bottom: 24px;
      left: 50%;
      background: var(--dark);
      color: #fff;
      padding: 10px 14px;
      border-radius: 8px;
      font-size: 10px;
      transform: translate(-50%, 15px);
      opacity: 0;
      transition: 0.2s;
    }

    .toast.show {
      opacity: 1;
      transform: translate(-50%, 0);
    }

    /* RESPONSIVE */
    @media (max-width: 1050px) {
      #mainNav {
        display: none;
      }

      .mobile-menu {
        display: grid;
      }

      .header-main {
        flex-wrap: wrap;
      }

      .searchbar {
        order: 4;
        width: 100%;
        margin: 0;
      }

      .collection-grid,
      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .hero {
        grid-template-columns: 1fr;
      }

      .hero-image {
        min-height: 430px;
      }

      .promo-grid {
        grid-template-columns: 1fr;
      }

      .service-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .service-grid > div:nth-child(2) {
        border-right: 0;
      }

      .service-grid > div:nth-child(-n+2) {
        border-bottom: 1px solid var(--line);
      }

      .footer-grid {
        grid-template-columns: 2fr 1fr 1fr;
      }

      .newsletter {
        display: block;
      }

      .newsletter form {
        margin-top: 18px;
        width: 100%;
        max-width: 500px;
      }
    }

    @media (max-width: 720px) {
      .announce-in span:nth-child(n+2) {
        display: none;
      }

      .wrap {
        width: min(var(--shell), calc(100% - 24px));
      }

      .header-main {
        min-height: 64px;
        gap: 8px;
      }

      .brand {
        font-size: 18px;
      }

      .head-actions {
        margin-left: auto;
      }

      .bag-btn b {
        display: none;
      }

      .mobile-nav {
        position: absolute;
        left: 12px;
        right: 12px;
        top: 64px;
        padding: 13px;
        background: #fff;
        border: 1px solid var(--line);
        border-radius: 12px;
        box-shadow: var(--shadow);
        flex-direction: column;
        gap: 12px;
        font-size: 11px;
        font-weight: 800;
      }

      .mobile-nav.open {
        display: flex;
      }

      .hero {
        margin-top: 15px;
        border-radius: 20px;
      }

      .hero-copy {
        padding: 40px 25px;
      }

      .hero h1 {
        font-size: 49px;
        letter-spacing: -2.5px;
      }

      .hero-image {
        min-height: 330px;
      }

      .category-band,
      .editorial {
        padding: 58px 0;
      }

      .section-top {
        align-items: start;
        flex-direction: column;
      }

      .section-top > p {
        text-align: left;
      }

      .collection-grid,
      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .collection-card {
        height: 190px;
      }

      .dark-section {
        padding: 60px 0;
      }

      .filter-row {
        width: 100%;
      }

      .product-media {
        height: 210px;
      }

      .promo-main {
        grid-template-columns: 1fr;
      }

      .promo-main > img {
        height: 240px;
      }

      .promo-content {
        padding: 32px;
      }

      .editorial {
        grid-template-columns: 1fr;
        gap: 28px;
      }

      .editorial-image img {
        height: 300px;
      }

      .editorial-copy h2 {
        font-size: 36px;
      }

      .reviews {
        grid-template-columns: 1fr;
      }

      .newsletter {
        padding: 28px 24px;
      }

      .newsletter form {
        display: block;
      }

      .newsletter input,
      .newsletter form button {
        width: 100%;
        border-radius: 10px;
      }

      .newsletter form button {
        margin-top: 8px;
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media (max-width: 480px) {
      .topbar {
        display: none;
      }

      .hero-points {
        gap: 7px;
      }

      .hero-points strong {
        font-size: 10px;
      }

      .hero-points span {
        font-size: 7px;
      }

      .collection-grid,
      .product-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 9px;
      }

      .product-media {
        height: 180px;
      }

      .product-info h3 {
        font-size: 12px;
      }

      .promo-grid {
        padding: 58px 0;
      }

      .promo-small {
        min-height: 330px;
      }

      .service-grid {
        grid-template-columns: 1fr;
      }

      .service-grid > div {
        border-right: 0 !important;
        border-bottom: 1px solid var(--line);
      }

      .service-grid > div:last-child {
        border-bottom: 0;
      }

      .editorial-copy h2 {
        font-size: 32px;
      }

      .hero-card {
        left: 16px;
        bottom: 16px;
      }

      .hero-stamp {
        left: 15px;
        top: 15px;
      }
    }
  </style>
</head>

<body>

  <!-- ANNOUNCEMENT -->
  <div class="announce">
    <div class="wrap announce-in">
      <span>
        <i class="fa-solid fa-sparkles"></i>
        New season drop is live
      </span>

      <span>
        Free shipping on orders above $50
      </span>

      <span>
        Easy 30-day returns
      </span>
    </div>
  </div>


  <!-- HEADER -->
  <header class="site-header">

    <div class="wrap header-main">

      <button
        class="mobile-menu head-icon"
        id="menuBtn"
        aria-label="Menu"
      >
        <i class="fa-solid fa-bars"></i>
      </button>


      <a class="brand" href="#">

        <span class="brand-mark">
          M
        </span>

        <span>
          Manaswi<span class="brand-accent">Shop</span>
        </span>

      </a>


      <nav id="mainNav">

        <a href="#shop">
          Shop
        </a>

        <a href="#collections">
          Collections
        </a>

        <a href="#new">
          New in
        </a>

        <a href="#deals">
          Offers
        </a>

      </nav>


      <!-- SEARCH -->
      <form
        class="searchbar"
        id="searchForm"
      >

        <i class="fa-solid fa-magnifying-glass"></i>

        <input
          id="searchInput"
          type="search"
          placeholder="Search products..."
        />

        <button type="submit">
          Search
        </button>

      </form>


      <!-- HEADER ACTIONS -->
      <div class="head-actions">

        <button
          class="head-icon"
          id="accountBtn"
          aria-label="Account"
        >
          <i class="fa-regular fa-user"></i>
        </button>


        <button
          class="head-icon"
          id="wishlistBtn"
          aria-label="Wishlist"
        >

          <i class="fa-regular fa-heart"></i>

          <span id="wishCount">
            0
          </span>

        </button>


        <button
          class="bag-btn"
          id="cartBtn"
          aria-label="Cart"
        >

          <i class="fa-solid fa-bag-shopping"></i>

          <b>
            Bag
          </b>

          <span id="cartCount">
            0
          </span>

        </button>

      </div>

    </div>


    <!-- MOBILE NAV -->
    <div
      class="mobile-nav"
      id="mobileNav"
    >

      <a href="#shop">
        Shop
      </a>

      <a href="#collections">
        Collections
      </a>

      <a href="#new">
        New in
      </a>

      <a href="#deals">
        Offers
      </a>

    </div>

  </header>


  <main>

    <!-- HERO -->
    <section
      class="hero wrap"
      id="shop"
    >

      <div class="hero-copy">

        <span class="eyebrow">
          THE MANASWI EDIT · 2026
        </span>


        <h1>
          Good things.
          <br>
          <em>Beautifully chosen.</em>
        </h1>


        <p>
          Discover refined tech, fashion and everyday essentials —
          selected for people who care about what they bring home.
        </p>


        <div class="hero-cta">

          <a
            class="btn btn-dark"
            href="#new"
          >
            Shop the edit

            <i class="fa-solid fa-arrow-right"></i>
          </a>


          <a
            class="btn btn-light"
            href="#collections"
          >
            Explore collections
          </a>

        </div>


        <div class="hero-points">

          <div>
            <strong>
              4.8/5
            </strong>

            <span>
              customer rating
            </span>
          </div>


          <i></i>


          <div>
            <strong>
              10K+
            </strong>

            <span>
              happy shoppers
            </span>
          </div>


          <i></i>


          <div>
            <strong>
              30 days
            </strong>

            <span>
              easy returns
            </span>
          </div>

        </div>

      </div>


      <div class="hero-image">

        <div class="hero-stamp">

          <b>
            01
          </b>

          <span>
            Curated
            <br>
            every week
          </span>

        </div>


        <div class="hero-card">

          <small>
            FEATURED EDIT
          </small>

          <strong>
            Quiet luxury
            <br>
            for everyday life
          </strong>

          <a href="#new">

            Shop now

            <i class="fa-solid fa-arrow-up-right-from-square"></i>

          </a>

        </div>

      </div>

    </section>


    <!-- COLLECTIONS -->
    <section
      class="wrap category-band"
      id="collections"
    >

      <div class="section-top">

        <div>

          <span class="mini-title">
            SHOP THE WAY YOU LIKE
          </span>

          <h2>
            Browse collections
          </h2>

        </div>

        <p>
          Thoughtful groups made for faster shopping.
        </p>

      </div>


      <div
        class="collection-grid"
        id="categoryGrid"
      ></div>

    </section>


    <!-- PRODUCTS -->
    <section
      class="dark-section"
      id="new"
    >

      <div class="wrap">

        <div class="section-top">

          <div>

            <span class="mini-title">
              THE CURRENT EDIT
            </span>

            <h2>
              New & noteworthy
            </h2>

          </div>


          <div class="filter-row">

            <button
              class="filter active"
              data-filter="all"
            >
              All
            </button>

            <button
              class="filter"
              data-filter="tech"
            >
              Tech
            </button>

            <button
              class="filter"
              data-filter="style"
            >
              Style
            </button>

            <button
              class="filter"
              data-filter="life"
            >
              Lifestyle
            </button>

            <select id="sortSelect">

              <option value="featured">
                Featured
              </option>

              <option value="low">
                Price: low to high
              </option>

              <option value="high">
                Price: high to low
              </option>

              <option value="rating">
                Top rated
              </option>

            </select>

          </div>

        </div>


        <div
          class="product-grid"
          id="productGrid"
        ></div>

      </div>

    </section>


    <!-- PROMOS -->
    <section
      class="wrap promo-grid"
      id="deals"
    >

      <article class="promo-card promo-main">

        <div class="promo-content">

          <span class="mini-title">
            WEEKEND OFFER
          </span>

          <h2>
            Up to 30% off
            <br>
            <em>selected essentials.</em>
          </h2>

          <p>
            Fresh markdowns on tech, accessories
            and daily favourites.
          </p>

          <a
            class="btn btn-dark"
            href="#new"
          >
            Shop offers
          </a>

        </div>


        <img
          src="https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?auto=format&fit=crop&w=1100&q=85"
          alt="Fashion collection"
        >

      </article>


      <article class="promo-card promo-small">

        <span class="mini-title">
          FLASH PICK
        </span>

        <h3>
          Premium audio.
          <br>
          <em>Less noise.</em>
        </h3>


        <div class="flash-price">

          $399

          <del>
            $449
          </del>

        </div>


        <button
          class="btn btn-light"
          id="flashBtn"
        >
          Grab the deal
        </button>


        <img
          src="https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=85"
          alt="Headphones"
        >

      </article>

    </section>


    <!-- SERVICE -->
    <section class="wrap service-grid">

      <div>

        <i class="fa-solid fa-truck-fast"></i>

        <b>
          Fast delivery
        </b>

        <span>
          Track every order from checkout to door.
        </span>

      </div>


      <div>

        <i class="fa-solid fa-shield-halved"></i>

        <b>
          Secure checkout
        </b>

        <span>
          Protected payment on every purchase.
        </span>

      </div>


      <div>

        <i class="fa-solid fa-arrow-rotate-left"></i>

        <b>
          Easy returns
        </b>

        <span>
          Changed your mind? No stress.
        </span>

      </div>


      <div>

        <i class="fa-solid fa-message"></i>

        <b>
          Real support
        </b>

        <span>
          Helpful humans when you need us.
        </span>

      </div>

    </section>


    <!-- EDITORIAL -->
    <section class="wrap editorial">

      <div class="editorial-image">

        <img
          src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1200&q=85"
          alt="Modern retail store"
        >

        <div class="editorial-tag">
          WHY SHOP MANASWI
        </div>

      </div>


      <div class="editorial-copy">

        <span class="mini-title">
          SHOPPING, WITH TASTE
        </span>

        <h2>
          A better store is one that knows
          when to get out of your way.
        </h2>

        <p>
          Less clutter. Better choices. Clear pricing.
          We built ManaswiShop around the details that
          make online shopping feel easier — and a little
          more special.
        </p>


        <div class="editorial-list">

          <div>
            <i class="fa-solid fa-check"></i>
            <span>
              Curated rather than crowded
            </span>
          </div>

          <div>
            <i class="fa-solid fa-check"></i>
            <span>
              Useful ratings and honest pricing
            </span>
          </div>

          <div>
            <i class="fa-solid fa-check"></i>
            <span>
              Simple checkout from every device
            </span>
          </div>

        </div>


        <a
          class="btn btn-dark"
          href="#footer"
        >
          Learn more
          <i class="fa-solid fa-arrow-right"></i>
        </a>

      </div>

    </section>


    <!-- REVIEWS -->
    <section class="wrap review-section">

      <div class="section-top">

        <div>

          <span class="mini-title">
            FROM OUR COMMUNITY
          </span>

          <h2>
            Small words. Big trust.
          </h2>

        </div>

      </div>


      <div class="reviews">

        <article>

          <div class="stars">
            ★★★★★
          </div>

          <p>
            “The site feels premium without making
            shopping complicated. Found exactly what
            I wanted.”
          </p>

          <strong>
            Ava Martin
          </strong>

          <span>
            Verified shopper
          </span>

        </article>


        <article>

          <div class="stars">
            ★★★★★
          </div>

          <p>
            “Product photos, prices and reviews are easy
            to compare. Checkout was genuinely quick.”
          </p>

          <strong>
            Michael Lee
          </strong>

          <span>
            Frequent buyer
          </span>

        </article>


        <article>

          <div class="stars">
            ★★★★☆
          </div>

          <p>
            “A much cleaner way to shop. The curated
            categories saved me a lot of time.”
          </p>

          <strong>
            Riya Sharma
          </strong>

          <span>
            New customer
          </span>

        </article>

      </div>

    </section>


    <!-- NEWSLETTER -->
    <section class="wrap newsletter">

      <div>

        <span class="mini-title">
          THE GOOD STUFF, OCCASIONALLY
        </span>

        <h2>
          Get the next drop first.
        </h2>

        <p>
          New arrivals, limited offers and useful picks.
          No noise.
        </p>

      </div>


      <form id="newsletterForm">

        <input
          type="email"
          required
          placeholder="Email address"
        >

        <button class="btn btn-dark">
          Join the list
        </button>

      </form>

    </section>

  </main>


  <!-- FOOTER -->
  <footer id="footer">

    <div class="wrap footer-grid">

      <div>

        <a class="brand" href="#">

          <span class="brand-mark">
            M
          </span>

          <span>
            Manaswi<span class="brand-accent">Shop</span>
          </span>

        </a>

        <p>
          Refined shopping for everyday life.
        </p>


        <div class="socials">

          <a href="#">
            <i class="fa-brands fa-instagram"></i>
          </a>

          <a href="#">
            <i class="fa-brands fa-facebook-f"></i>
          </a>

          <a href="#">
            <i class="fa-brands fa-x-twitter"></i>
          </a>

        </div>

      </div>


      <div>

        <h4>
          Shop
        </h4>

        <a href="#new">
          New in
        </a>

        <a href="#new">
          Best sellers
        </a>

        <a href="#deals">
          Offers
        </a>

      </div>


      <div>

        <h4>
          Help
        </h4>

        <a href="#">
          Shipping
        </a>

        <a href="#">
          Returns
        </a>

        <a href="#">
          Contact
        </a>

      </div>


      <div>

        <h4>
          Company
        </h4>

        <a href="#">
          About us
        </a>

        <a href="#">
          Privacy
        </a>

        <a href="#">
          Terms
        </a>

      </div>

    </div>


    <div class="wrap footer-bottom">

      <span>
        © <span id="year"></span> ManaswiShop
      </span>

      <span>
        Made for better shopping.
      </span>

    </div>

  </footer>


  <!-- CART BACKDROP -->
  <div
    class="backdrop"
    id="backdrop"
  ></div>


  <!-- CART PANEL -->
  <aside
    class="cart-panel"
    id="cartPanel"
  >

    <div class="cart-head">

      <div>

        <span class="mini-title">
          YOUR BAG
        </span>

        <h3>
          Shopping bag
        </h3>

      </div>


      <button
        class="head-icon"
        id="closeCart"
      >
        <i class="fa-solid fa-xmark"></i>
      </button>

    </div>


    <div
      class="cart-items"
      id="cartItems"
    ></div>


    <div class="cart-total">

      <span>
        Subtotal
      </span>

      <strong id="cartTotal">
        $0
      </strong>

    </div>


    <button
      class="btn btn-dark full"
      id="checkoutBtn"
    >
      Continue to checkout
      <i class="fa-solid fa-arrow-right"></i>
    </button>

  </aside>


  <!-- TOAST -->
  <div
    class="toast"
    id="toast"
  ></div>


  <script>

    /* ===========================
       DATA
    ============================ */

    const categories = [

      {
        id: "tech",
        title: "Tech",
        desc: "Smart essentials",
        icon: "fa-mobile-screen-button",
        image:
          "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: "style",
        title: "Style",
        desc: "Wear & carry",
        icon: "fa-shirt",
        image:
          "https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: "life",
        title: "Lifestyle",
        desc: "Daily favourites",
        icon: "fa-house",
        image:
          "https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=700&q=85"
      },

      {
        id: "audio",
        title: "Audio",
        desc: "Listen better",
        icon: "fa-headphones",
        image:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
      }

    ];


    const products = [

      {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        old: 1199,
        rating: 5,
        reviews: 128,
        badge: "BESTSELLER",
        cat: "tech",
        image:
          "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=800&q=85"
      },

      {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        badge: "NEW",
        cat: "tech",
        image:
          "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=85"
      },

      {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        old: 399,
        rating: 5,
        reviews: 214,
        badge: "DEAL",
        cat: "tech",
        image:
          "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=85"
      },

      {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "POPULAR",
        cat: "style",
        image:
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
      },

      {
        id: 5,
        title: "Minimal Travel Backpack",
        price: 79,
        old: 99,
        rating: 4,
        reviews: 67,
        badge: "SALE",
        cat: "style",
        image:
          "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
      },

      {
        id: 6,
        title: "Sony WH-1000XM5",
        price: 399,
        old: 449,
        rating: 5,
        reviews: 156,
        badge: "TOP PICK",
        cat: "audio",
        image:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
      },

      {
        id: 7,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "EDITOR'S PICK",
        cat: "life",
        image:
          "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=85"
      },

      {
        id: 8,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        cat: "life",
        image:
          "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=800&q=85"
      }

    ];


    let cart =
      JSON.parse(
        localStorage.getItem("manaswiCart") || "[]"
      );


    let wishlist =
      new Set(
        JSON.parse(
          localStorage.getItem("manaswiWishlist") || "[]"
        )
      );


    let currentFilter = "all";


    /* ===========================
       HELPERS
    ============================ */

    const $ = id =>
      document.getElementById(id);


    const money = value =>
      "$" + value.toLocaleString();


    function saveData() {

      localStorage.setItem(
        "manaswiCart",
        JSON.stringify(cart)
      );

      localStorage.setItem(
        "manaswiWishlist",
        JSON.stringify([...wishlist])
      );

    }


    function notify(message) {

      $("toast").textContent =
        message;

      $("toast").classList.add("show");

      clearTimeout(
        window.toastTimer
      );

      window.toastTimer =
        setTimeout(
          () =>
            $("toast")
              .classList.remove("show"),
          1600
        );

    }


    /* ===========================
       CATEGORIES
    ============================ */

    function renderCategories() {

      $("categoryGrid").innerHTML =
        categories.map(category => `

          <button
            class="collection-card"
            data-category="${category.id}"
          >

            <img
              src="${category.image}"
              alt="${category.title}"
            >

            <span
              class="collection-shade"
            ></span>

            <span
              class="collection-copy"
            >

              <small>
                ${category.desc}
              </small>

              <b>
                ${category.title}
              </b>

            </span>

            <span
              class="collection-arrow"
            >

              <i
                class="fa-solid fa-arrow-up-right"
              ></i>

            </span>

          </button>

        `).join("");


      document
        .querySelectorAll(
          "[data-category]"
        )
        .forEach(button => {

          button.onclick = () => {

            currentFilter =
              button.dataset.category;


            document
              .querySelectorAll(
                ".filter"
              )
              .forEach(filterButton => {

                filterButton.classList.toggle(
                  "active",
                  filterButton.dataset.filter ===
                    currentFilter
                );

              });


            renderProducts();


            $("new").scrollIntoView({
              behavior: "smooth"
            });

          };

        });

    }


    /* ===========================
       PRODUCTS
    ============================ */

    function renderProducts() {

      let list =
        [...products];


      const query =
        $("searchInput")
          .value
          .trim()
          .toLowerCase();


      if (
        currentFilter !==
        "all"
      ) {

        list =
          list.filter(
            product =>
              product.cat ===
              currentFilter
          );

      }


      if (query) {

        list =
          list.filter(
            product =>
              (
                product.title +
                " " +
                product.cat
              )
                .toLowerCase()
                .includes(query)
          );

      }


      const sort =
        $("sortSelect")
          .value;


      if (sort === "low") {

        list.sort(
          (a, b) =>
            a.price - b.price
        );

      }


      if (sort === "high") {

        list.sort(
          (a, b) =>
            b.price - a.price
        );

      }


      if (sort === "rating") {

        list.sort(
          (a, b) =>
            b.rating - a.rating
        );

      }


      $("productGrid").innerHTML =
        list.length

          ? list.map(product => `

              <article
                class="product-card"
              >

                <div
                  class="product-media"
                >

                  ${
                    product.badge
                      ? `
                        <span
                          class="product-badge"
                        >
                          ${product.badge}
                        </span>
                      `
                      : ""
                  }


                  <button
                    class="product-like ${
                      wishlist.has(product.id)
                        ? "active"
                        : ""
                    }"
                    data-wish="${product.id}"
                  >

                    <i
                      class="fa-${
                        wishlist.has(product.id)
                          ? "solid"
                          : "regular"
                      } fa-heart"
                    ></i>

                  </button>


                  <img
                    src="${product.image}"
                    alt="${product.title}"
                    loading="lazy"
                  >


                  <button
                    class="quick-add"
                    data-add="${product.id}"
                  >
                    Quick add
                  </button>

                </div>


                <div
                  class="product-info"
                >

                  <small>
                    ${product.cat}
                  </small>


                  <h3>
                    ${product.title}
                  </h3>


                  <div
                    class="rating"
                  >

                    ${
                      "★".repeat(
                        product.rating
                      )
                    }

                    <span>
                      ${product.reviews}
                      reviews
                    </span>

                  </div>


                  <div
                    class="product-bottom"
                  >

                    <div>

                      <strong>
                        ${money(
                          product.price
                        )}
                      </strong>

                      ${
                        product.old
                          ? `
                            <del>
                              ${money(
                                product.old
                              )}
                            </del>
                          `
                          : ""
                      }

                    </div>


                    <button
                      class="round-add"
                      data-add="${product.id}"
                      aria-label="Add to cart"
                    >

                      <i
                        class="fa-solid fa-plus"
                      ></i>

                    </button>

                  </div>

                </div>

              </article>

            `).join("")

          : `

              <div
                class="empty-state"
              >
                No products match your search.
              </div>

            `;


      document
        .querySelectorAll(
          "[data-add]"
        )
        .forEach(button => {

          button.onclick = () => {

            addToCart(
              Number(
                button.dataset.add
              )
            );

          };

        });


      document
        .querySelectorAll(
          "[data-wish]"
        )
        .forEach(button => {

          button.onclick = () => {

            toggleWishlist(
              Number(
                button.dataset.wish
              )
            );

          };

        });

    }


    /* ===========================
       WISHLIST
    ============================ */

    function toggleWishlist(id) {

      if (
        wishlist.has(id)
      ) {

        wishlist.delete(id);

        notify(
          "Removed from wishlist"
        );

      } else {

        wishlist.add(id);

        notify(
          "Saved to wishlist"
        );

      }


      saveData();

      updateCounts();

      renderProducts();

    }


    /* ===========================
       CART
    ============================ */

    function addToCart(id) {

      const existing =
        cart.find(
          item =>
            item.id === id
        );


      if (existing) {

        existing.qty++;

      } else {

        cart.push({
          id,
          qty: 1
        });

      }


      saveData();

      updateCounts();

      renderCart();

      notify(
        "Added to your bag"
      );

    }


    function updateCounts() {

      $("cartCount").textContent =
        cart.reduce(
          (total, item) =>
            total + item.qty,
          0
        );


      $("wishCount").textContent =
        wishlist.size;

    }


    function renderCart() {

      if (!cart.length) {

        $("cartItems").innerHTML = `

          <div
            class="empty-cart"
          >

            <i
              class="fa-solid fa-bag-shopping"
            ></i>

            <strong>
              Your bag is empty
            </strong>

            <span>
              Add something beautiful.
            </span>

          </div>

        `;

      } else {

        $("cartItems").innerHTML =
          cart.map(item => {

            const product =
              products.find(
                product =>
                  product.id ===
                  item.id
              );


            return `

              <div
                class="cart-item"
              >

                <img
                  src="${product.image}"
                  alt="${product.title}"
                >


                <div>

                  <strong>
                    ${product.title}
                  </strong>

                  <small>
                    ${money(
                      product.price
                    )}
                    ×
                    ${item.qty}
                  </small>

                </div>


                <button
                  data-remove="${product.id}"
                  aria-label="Remove item"
                >

                  <i
                    class="fa-solid fa-trash"
                  ></i>

                </button>

              </div>

            `;

          }).join("");


        document
          .querySelectorAll(
            "[data-remove]"
          )
          .forEach(button => {

            button.onclick = () => {

              const id =
                Number(
                  button.dataset.remove
                );


              cart =
                cart.filter(
                  item =>
                    item.id !== id
                );


              saveData();

              updateCounts();

              renderCart();

            };

          });

      }


      const total =
        cart.reduce(
          (sum, item) => {

            const product =
              products.find(
                product =>
                  product.id ===
                  item.id
              );


            return (
              sum +
              product.price *
              item.qty
            );

          },
          0
        );


      $("cartTotal").textContent =
        money(total);

    }


    function openCart() {

      $("cartPanel")
        .classList.add("open");

      $("backdrop")
        .classList.add("show");

      document.body
        .classList.add("no-scroll");

    }


    function closeCart() {

      $("cartPanel")
        .classList.remove("open");

      $("backdrop")
        .classList.remove("show");

      document.body
        .classList.remove("no-scroll");

    }


    /* ===========================
       EVENTS
    ============================ */

    $("cartBtn").onclick =
      openCart;


    $("closeCart").onclick =
      closeCart;


    $("backdrop").onclick =
      closeCart;


    $("accountBtn").onclick =
      () =>
        notify(
          "Account area ready to connect"
        );


    $("wishlistBtn").onclick =
      () =>
        notify(
          wishlist.size
            ? `${wishlist.size} saved item${
                wishlist.size === 1
                  ? ""
                  : "s"
              }`
            : "Your wishlist is empty"
        );


    $("checkoutBtn").onclick =
      () =>
        notify(
          cart.length
            ? "Checkout is ready to connect"
            : "Your bag is empty"
        );


    $("flashBtn").onclick =
      () =>
        addToCart(6);


    $("searchForm").onsubmit =
      event => {

        event.preventDefault();

        renderProducts();

        $("new").scrollIntoView({
          behavior: "smooth"
        });

      };


    $("searchInput").oninput =
      () => {

        currentFilter =
          "all";


        document
          .querySelectorAll(
            ".filter"
          )
          .forEach(button => {

            button.classList.toggle(
              "active",
              button.dataset.filter ===
                "all"
            );

          });


        renderProducts();

      };


    $("sortSelect").onchange =
      renderProducts;


    document
      .querySelectorAll(
        ".filter"
      )
      .forEach(button => {

        button.onclick = () => {

          document
            .querySelectorAll(
              ".filter"
            )
            .forEach(
              b =>
                b.classList.remove(
                  "active"
                )
            );


          button.classList.add(
            "active"
          );


          currentFilter =
            button.dataset.filter;


          $("searchInput")
            .value = "";


          renderProducts();

        };

      });


    $("menuBtn").onclick =
      () =>
        $("mobileNav")
          .classList.toggle("open");


    $("newsletterForm").onsubmit =
      event => {

        event.preventDefault();

        event.target.reset();

        notify(
          "You're on the list"
        );

      };


    $("year").textContent =
      new Date().getFullYear();


    /* ===========================
       INITIALIZE
    ============================ */

    renderCategories();

    renderProducts();

    updateCounts();

    renderCart();

  </script>

</body>
</html>
