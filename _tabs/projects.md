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
            background-color: #FFFFFF;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
            color: #333;
        }
        
        .container {
            display: flex;
            gap: 40px;
            padding: 20px;
        }
        
        .profile-section {
            width: 280px;
            flex-shrink: 0;
            position: sticky;
            top: 20px;
            align-self: flex-start;
        }
        
        .profile-image {
            width: 130px;
            height: 130px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
        }
        
        .profile-details {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }
        
        .profile-name {
            font-size: 28px;
            font-weight: 600;
            color: #333;
        }
        
        .profile-location {
            display: flex;
            align-items: center;
            gap: 5px;
            color: #666;
            font-size: 15px;
        }
        
        .location-icon {
            color: #666;
        }
        
        .profile-bio {
            color: #555;
            font-size: 16px;
            line-height: 1.6;
            margin-top: 5px;
        }
        
        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 15px;
        }
        
        .social-link {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background-color: #f5f5f5;
            color: #666;
            text-decoration: none;
            transition: all 0.2s;
        }
        
        .social-link:hover {
            background-color: #e0e0e0;
        }
        
        .content-section {
            flex: 1;
        }
        
        .section-title {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 20px;
            color: #333;
        }
        
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
        }
        
        .product-card {
            background-color: white;
            border-radius: 12px;
            padding: 20px;
            display: flex;
            align-items: flex-start;
            gap: 15px;
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
            border: 1px solid #f0f0f0;
        }
        
        .product-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.08);
        }
        
        .product-icon {
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 8px;
            color: white;
            font-size: 20px;
        }
        
        .product-info {
            flex: 1;
        }
        
        .product-title {
            font-size: 18px;
            font-weight: 600;
            color: #333;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .product-description {
            font-size: 14px;
            color: #666;
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
            gap: 10px;
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 500;
            margin-top: 40px;
            text-decoration: none;
            cursor: pointer;
            border: none;
            transition: background-color 0.2s;
        }
        
        .build-button:hover {
            background-color: #555;
        }

        /* Product-specific colors */
        .pdf-icon { background-color: #4285F4; }
        .testimonial-icon { background-color: #673AB7; }
        .pdfgen-icon { background-color: #DB4437; }
        .vividshare-icon { background-color: #0277BD; }
        .quickai-icon { background-color: #4CAF50; }
        .docsium-icon { background-color: #3F51B5; }
        .supportman-icon { background-color: #9C27B0; }
        .seeyafuture-icon { background-color: #FFA000; }
        
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
            
            .profile-section {
                width: 100%;
                position: static;
                margin-bottom: 30px;
            }
            
            .products-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Left column: Profile information -->
        <div class="profile-section">
            <img src="/api/placeholder/130/130" alt="Damon Chen" class="profile-image">
            <div class="profile-details">
                <h1 class="profile-name">Damon Chen</h1>
                <div class="profile-location">
                    <span class="location-icon">📍</span>
                    <span>SF Bay Area</span>
                </div>
                <p class="profile-bio">
                    I used to be a software engineer at Cisco, but having kids completely shuffled my life! After eight years in a cushy corporate job, I made the decision to quit and pursue something I truly love.
                </p>
                <div class="social-links">
                    <a href="#" class="social-link">🐦</a>
                    <a href="#" class="social-link">🔗</a>
                </div>
            </div>
        </div>
        
        <!-- Right column: Projects grid -->
        <div class="content-section">
            <h2 class="section-title">Projects</h2>
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
                <span>🏗️</span>
                Build your Indie Page
            </button>
        </div>
    </div>
</body>
