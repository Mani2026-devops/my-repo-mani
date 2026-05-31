<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&family=Playfair+Display:ital,wght@0,600;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #fafbfc;
            --primary: #0f172a;
            --primary-light: #1e293b;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --muted: #64748b;
            --card: #ffffff;
            --surface: #f1f5f9;
            --success: #10b981;
            --radius: 16px;
            --radius-sm: 8px;
            --container: 1200px;
            --shadow: 0 4px 30px rgba(15, 23, 42, 0.03);
            --shadow-hover: 0 20px 40px rgba(15, 23, 42, 0.08);
            --border: rgba(15, 23, 42, 0.06);
        }

        * {
            box-sizing: border-box;
            transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
        }

        html, body {
            height: 100%;
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            color: var(--primary);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Header Restyling */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.85);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 18px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            font-size: 22px;
            font-weight: 700;
            letter-spacing: -0.03em;
        }

        .brand .accent {
            color: var(--accent)
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
            margin: 0;
            padding: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            color: var(--muted);
            font-weight: 600;
            font-size: 14px;
        }

        nav.main-nav li a:hover {
            background: var(--surface);
            color: var(--primary)
        }

        .search {
            display: flex;
            align-items: center;
            gap: 10px;
            background: var(--surface);
            padding: 10px 16px;
            border-radius: 999px;
            min-width: 280px;
            border: 1px solid transparent;
        }

        .search:focus-within {
            border-color: rgba(37, 63, 235, 0.2);
            background: var(--card);
            box-shadow: 0 0 0 4px rgba(37, 63, 235, 0.05);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            font-weight: 500;
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--primary);
            font-size: 18px;
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 50%;
        }

        .icon-btn:hover {
            background: var(--surface);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background: var(--primary);
            color: white;
            border-radius: 50%;
        }

        .cart:hover {
            background: var(--primary-light);
            transform: translateY(-2px);
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent);
            color: white;
            font-size: 10px;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 22px;
            cursor: pointer;
        }

        /* Hero Revamp */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: 
                linear-gradient(135deg, rgba(15, 23, 42, 0.85), rgba(15, 23, 42, 0.65)),
                url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            color: white;
            min-height: 520px;
            padding: 80px 24px;
            border-radius: 0 0 var(--radius) var(--radius);
            box-shadow: var(--shadow);
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-style: italic;
            font-size: 54px;
            font-weight: 600;
            margin: 0 0 16px;
            letter-spacing: -0.01em;
        }

        .hero p {
            margin: 0 0 32px;
            opacity: 0.85;
            max-width: 680px;
            font-size: 16px;
            line-height: 1.6;
            margin-left: auto;
            margin-right: auto;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 28px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            cursor: pointer;
            border: 0;
        }

        .btn-primary {
            background: var(--card);
            color: var(--primary);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.15);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            color: white;
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-3px);
        }

        /* Sections & Headings */
        .section {
            padding: 64px 0;
        }

        .section .title {
            text-align: center;
            margin-bottom: 40px;
        }

        .section .title h2 {
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin: 0 0 8px;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* Elegantly styled Category Tiles */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 24px 16px;
            text-align: center;
            border: 1px solid var(--border);
            box-shadow: var(--shadow);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(37, 63, 235, 0.15);
        }

        .cat-card .icon {
            font-size: 24px;
            color: var(--primary);
            width: 54px;
            height: 54px;
            background: var(--surface);
            border-radius: 50%;
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
        }

        .cat-card:hover .icon {
            background: var(--primary);
            color: white;
        }

        .cat-card h4 {
            margin: 0;
            font-size: 15px;
            font-weight: 600;
        }

        /* Re-designed Product Minimal Cards */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            border: 1px solid var(--border);
            box-shadow: var(--shadow);
            position: relative;
        }

        .product:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
        }

        .product img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            display: block;
        }

        .product-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 16px;
            font-weight: 600;
            letter-spacing: -0.01em;
        }

        .product-body .muted {
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            font-weight: 600;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: auto;
            padding-top: 12px;
        }

        .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-weight: 500;
            font-size: 13px;
        }

        .rating {
            color: #ffc107;
            font-size: 12px;
            font-weight: 600;
        }

        .product-footer {
            padding: 0 20px 20px;
            display: flex;
            gap: 8px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 12px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            font-weight: 600;
            font-size: 14px;
        }

        .add-btn:hover {
            background: var(--accent);
        }

        .wish-btn {
            background: var(--surface);
            border: 0;
            padding: 12px;
            width: 44px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            color: var(--muted);
        }

        .wish-btn:hover {
            background: #ffe4e6;
            color: #f43f5e;
        }

        /* Interactive Premium Flash Deal Banner */
        .deal {
            display: flex;
            gap: 0;
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            align-items: center;
            border: 1px solid var(--border);
            box-shadow: var(--shadow);
        }

        .deal img {
            width: 50%;
            height: 400px;
            object-fit: cover;
        }

        .deal .content {
            padding: 48px;
            flex: 1;
        }

        .deal h3 {
            font-size: 28px;
            margin: 0 0 8px;
            font-weight: 700;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 24px 0;
        }

        .time-box {
            background: var(--surface);
            color: var(--primary);
            padding: 14px;
            border-radius: var(--radius-sm);
            min-width: 70px;
            text-align: center;
            border: 1px solid var(--border);
        }

        .time-box div:first-child {
            font-size: 20px;
            font-weight: 700;
        }

        .deal .price {
            font-size: 32px;
            color: var(--success);
        }

        /* Carousel Testimonials */
        .testimonials {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 16px 4px;
            scrollbar-width: none;
        }

        .testimonial {
            min-width: 360px;
            background: var(--card);
            padding: 32px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            border: 1px solid var(--border);
        }

        /* Modern Newsletter Box */
        .newsletter {
            background: linear-gradient(135deg, var(--primary), var(--primary-light));
            color: white;
            border-radius: var(--radius);
            padding: 56px 24px;
            text-align: center;
            box-shadow: var(--shadow);
        }

        .newsletter h3 {
            font-size: 28px;
            margin: 0 0 8px;
            font-weight: 700;
        }

        .newsletter p {
            margin: 0 0 28px;
            opacity: 0.8;
        }

        .newsletter input {
            padding: 16px 24px;
            border-radius: 999px;
            border: 0;
            width: 340px;
            max-width: 100%;
            margin-right: 8px;
            outline: none;
            font-size: 14px;
        }

        .newsletter .btn-primary {
            background: var(--accent);
            color: white;
        }
        .newsletter .btn-primary:hover {
            background: var(--accent-hover);
        }

        /* Footer */
        footer {
            margin-top: 48px;
            padding: 64px 0 32px;
            border-top: 1px solid var(--border);
            color: var(--muted);
            font-size: 14px;
            background: var(--card);
        }

        /* Responsive Breakpoints */
        @media (max-width:1200px) {
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width:900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .deal { flex-direction: column; }
            .deal img, .deal .content { width: 100%; }
            .deal .content { padding: 32px; }
        }

        @media (max-width:600px) {
            .hero h1 { font-size: 36px; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: 1fr; }
            .newsletter input { width: 100%; margin-right: 0; margin-bottom: 12px; }
            .newsletter form { flex-direction: column; }
        }

        .muted { color: var(--muted); }
        .text-center { text-align: center; }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:16px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><em class="fas fa-th-large"></em> Categories <em class="fas fa-chevron-down" style="font-size:12px;"></em></a>
                    </li>
                    <li><a href="#"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
                    <li><a href="#about"><em class="fas fa-info-circle"></em> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search" style="color: var(--muted);"></em></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <em class="fas fa-shopping-cart" style="font-size: 14px;"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <div id="mobileMenu" style="display:none; background:var(--card); border-top:1px solid var(--border);">
            <div class="container" style="padding:16px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:12px;">
                        <li><a href="#" style="font-weight:600;">Home</a></li>
                        <li><a href="#" style="font-weight:600;">Categories</a></li>
                        <li><a href="#" style="font-weight:600;">Trending</a></li>
                        <li><a href="#deals" style="font-weight:600;">Deals</a></li>
                        <li><a href="#about" style="font-weight:600;">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="container">
                <h1>Our New Summer Collection</h1>
                <p>Discover the latest trends in high-end design, technology, and contemporary accessories — thoughtfully curated to elevate your everyday routines.</p>
                <div style="display: flex; gap: 12px; justify-content: center;">
                    <button class="btn btn-primary" id="shopNow">Shop Collection <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2>Shop by Category</h2>
                <p class="muted">Browse through our wide range of products across curated lines.</p>
            </div>

            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending Products</h2>
                <p class="muted">Popular lifestyle picks chosen by our community.</p>
            </div>

            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Flash Sale</h2>
                <p class="muted">Limited luxury variants available for a short window.</p>
            </div>

            <div class="deal" style="align-items:stretch;">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <span style="background: #fee2e2; color: #ef4444; padding: 6px 12px; font-weight: 700; border-radius: 6px; font-size: 12px; uppercase; letter-spacing: 0.05em;">Limited Stock offer</span>
                    <h3 style="margin-top: 14px;">MacBook Air M2</h3>
                    <p class="muted">Thin, light, and powerful — redesigned completely around the next-generation M2 silicon architecture.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div style="font-size:11px; font-weight: 600; opacity:.6">Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div style="font-size:11px; font-weight: 600; opacity:.6">Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div style="font-size:11px; font-weight: 600; opacity:.6">Mins</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div style="font-size:11px; font-weight: 600; opacity:.6">Secs</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:16px;">
                        <div class="price">$999 <span class="old-price" style="font-size:16px; margin-left: 6px;">$1,199</span></div>
                        <div class="deal-discount" style="background:#ef4444;color:white;padding:4px 10px;border-radius:6px;font-weight:700;font-size:13px">-17%</div>
                    </div>

                    <p style="margin-top:14px; font-size: 14px;">Only <strong>12</strong> premium units remain at this tier rate.</p>
                    <div style="margin-top:24px;">
                        <button class="btn" style="background: var(--primary); color: white;" id="buyDeal">Claim Deal Now</button>
                    </div>
                </div>
            </div>
        </section>

        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>What our customers say</h2>
                <p class="muted">Real experiences verified by authentic transaction channels.</p>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating" style="margin-bottom: 12px;">★★★★★</div>
                    <p style="font-style: italic; color: var(--primary-light); font-size: 15px; margin-bottom: 20px;">"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div style="display:flex;align-items:center;gap:12px">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700; font-size: 14px;">Ava Martin</div>
                            <div class="muted" style="font-size:12px">Verified Buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating" style="margin-bottom: 12px;">★★★★☆</div>
                    <p style="font-style: italic; color: var(--primary-light); font-size: 15px; margin-bottom: 20px;">"Great selection and the checkout was smooth. Will shop here again dynamically."</p>
                    <div style="display:flex;align-items:center;gap:12px">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700; font-size: 14px;">Michael Lee</div>
                            <div class="muted" style="font-size:12px">Frequent Patron</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Stay in the loop</h3>
                <p>Subscribe to accept members-only event drops & catalog updates</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your business email" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:14px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:40px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div style="font-weight:700;font-size:20px;color: var(--primary);">NexusShop</div>
                <p class="muted" style="margin-top:12px; line-height: 1.6;">A completely customizable design built natively with standard styling utilities.</p>
                <div style="margin-top:20px;display:flex;gap:12px">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex;gap:64px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div style="font-weight:700;margin-bottom:12px; color: var(--primary);">Company</div>
                    <div class="muted" style="line-height:2">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:700;margin-bottom:12px; color: var(--primary);">Support</div>
                    <div class="muted" style="line-height:2">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:48px;color:var(--muted);font-size:13px; border-top: 1px solid var(--border); padding-top: 24px;">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-clock'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14 Pro',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

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
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:12px;margin-top:6px; font-weight:500;">Explore Design</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({
                        top: document.getElementById('prod-title').offsetTop - 80,
                        behavior: 'smooth'
                    });
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
                    ${p.badge ? `<div style="position:absolute; top:14px; left:14px; z-index:2;"><span style="background:${p.badge.startsWith('-')? '#ef4444' : 'var(--success)'};color:white;padding:4px 10px;border-radius:6px;font-weight:700;font-size:11px; letter-spacing:0.02em;">${p.badge}</span></div>` : ''}
                    <img src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div class="product-body">
                        <div class="muted">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">$${p.oldPrice.toLocaleString()}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))}${'☆'.repeat(5 - Math.round(p.rating))}</div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add to Cart</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            } [s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added ✓';
                btn.style.background = 'var(--success)';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.style.background = 'var(--primary)';
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
        });

        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = '#ef4444';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = 'var(--success)';
            msg.textContent = 'Thanks! You are subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); 
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 80,
            behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            alert('Deal added to cart.');
        });

        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html>
