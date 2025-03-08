---
order: 10
layout: empty
icon: fas fa-project-diagram
---

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Damon Chen</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
        
        body {
            background-color: #f7f7f7;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .profile-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .profile-header {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            gap: 10px;
        }
        
        .profile-image {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
        }
        
        .profile-name {
            font-size: 28px;
            font-weight: bold;
            color: #202124;
            margin-top: 10px;
        }
        
        .profile-location {
            display: flex;
            align-items: center;
            gap: 5px;
            color: #5f6368;
            font-size: 14px;
        }
        
        .location-icon {
            color: #5f6368;
        }
        
        .profile-bio {
            max-width: 600px;
            color: #5f6368;
            font-size: 16px;
            line-height: 1.5;
            margin-top: 10px;
        }
        
        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 10px;
        }
        
        .social-icon {
            color: #5f6368;
            font-size: 20px;
        }
        
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        
        .product-card {
            background-color: white;
            border-radius: 12px;
            padding: 20px;
            display: flex;
            align-items: flex-start;
            gap: 15px;
            transition: transform 0.2s;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        }
        
        .product-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        
        .product-icon {
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 8px;
            color: white;
            font-size: 16px;
        }
        
        .product-info {
            flex: 1;
        }
        
        .product-title {
            font-size: 16px;
            font-weight: 600;
            color: #202124;
            margin-bottom: 5px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .product-description {
            font-size: 14px;
            color: #5f6368;
            line-height: 1.4;
        }
        
        .acquired-badge {
            background-color: #e1f5fe;
            color: #039be5;
            font-size: 12px;
            padding: 2px 8px;
            border-radius: 20px;
            font-weight: 500;
        }
        
        .build-button {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background-color: #3c4043;
            color: white;
            padding: 8px 16px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 500;
            margin-top: 20px;
            text-decoration: none;
            cursor: pointer;
        }
        
        .build-icon {
            font-size: 16px;
        }

        .pdf-icon { background-color: #4285F4; }
        .testimonial-icon { background-color: #673AB7; }
        .pdfgen-icon { background-color: #DB4437; }
        .vividshare-icon { background-color: #0277BD; }
        .quickai-icon { background-color: #4CAF50; }
        .docsium-icon { background-color: #3F51B5; }
        .supportman-icon { background-color: #9C27B0; }
        .seeyafuture-icon { background-color: #FFA000; }
    </style>
</head>
<body>
    <div class="profile-container">
        <div class="profile-header">
            <img src="/api/placeholder/120/120" alt="Damon Chen" class="profile-image">
            <h1 class="profile-name">Damon Chen</h1>
            <div class="profile-location">
                <span class="location-icon">📍</span>
                <span>SF Bay Area</span>
            </div>
            <p class="profile-bio">
                I used to be a software engineer at Cisco, but having kids completely shuffled my life! After eight years in a cushy corporate job, I made the decision to quit and pursue something I truly love.
            </p>
            <div class="social-links">
                <a href="#" class="social-icon">🐦</a>
                <a href="#" class="social-icon">🔗</a>
            </div>
        </div>
    </div>
    
    <div class="products-grid">
        <!-- PDF -->
        <div class="product-card">
            <div class="product-icon pdf-icon">📄</div>
            <div class="product-info">
                <div class="product-title">PDF</div>
                <div class="product-description">Chat with PDF using AI</div>
            </div>
        </div>
        
        <!-- Testimonial -->
        <div class="product-card">
            <div class="product-icon testimonial-icon">💬</div>
            <div class="product-info">
                <div class="product-title">Testimonial</div>
                <div class="product-description">Collect and manage testimonials all in one</div>
            </div>
        </div>
        
        <!-- PDFgen -->
        <div class="product-card">
            <div class="product-icon pdfgen-icon">📑</div>
            <div class="product-info">
                <div class="product-title">Pdfgen</div>
                <div class="product-description">Generate PDF with AI</div>
            </div>
        </div>
        
        <!-- VividShare -->
        <div class="product-card">
            <div class="product-icon vividshare-icon">🌟</div>
            <div class="product-info">
                <div class="product-title">Vividshare</div>
                <div class="product-description">VividShare helps create stunning marketing assets for your social media sharing</div>
            </div>
        </div>
        
        <!-- QuickyAI -->
        <div class="product-card">
            <div class="product-icon quickai-icon">🚀</div>
            <div class="product-info">
                <div class="product-title">QuickyAI</div>
                <div class="product-description">QuickyAI is a browser extension that allows you to seamlessly engage with any website using ChatGPT</div>
            </div>
        </div>
        
        <!-- Docsium -->
        <div class="product-card">
            <div class="product-icon docsium-icon">📝</div>
            <div class="product-info">
                <div class="product-title">Docsium</div>
                <div class="product-description">ChatGPT directly in Google Sheets, Google Slides and Google Docs</div>
            </div>
        </div>
        
        <!-- Supportman -->
        <div class="product-card">
            <div class="product-icon supportman-icon">👨‍💼</div>
            <div class="product-info">
                <div class="product-title">Supportman <span class="acquired-badge">Acquired</span></div>
                <div class="product-description">Send Intercom Rating to Your Slack Instantly</div>
            </div>
        </div>
        
        <!-- Seeyafuture -->
        <div class="product-card">
            <div class="product-icon seeyafuture-icon">👋</div>
            <div class="product-info">
                <div class="product-title">Seeyafuture</div>
                <div class="product-description">Send a video to your future self</div>
            </div>
        </div>
    </div>
    
    <button class="build-button">
        <span class="build-icon">🏗️</span>
        Build your Indie Page
    </button>
</body>
