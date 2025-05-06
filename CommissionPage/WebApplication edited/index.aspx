<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CommissionPage.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Art Commissions</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>
    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-logo">
                <i data-lucide="palette" class="logo-icon"></i>
                <span class="logo-text">ArtCommissions</span>
            </div>

            <button class="mobile-menu-btn">
                <i data-lucide="menu" class="menu-icon"></i>
                <i data-lucide="x" class="close-icon hidden"></i>
            </button>

            <div class="nav-links">
                <button onclick="scrollToSection('home')" class="nav-link">
                    <i data-lucide="home"></i>
                    <span>Home</span>
                </button>
                <button onclick="scrollToSection('about')" class="nav-link">
                    <i data-lucide="info"></i>
                    <span>About</span>
                </button>
                <button onclick="scrollToSection('gallery')" class="nav-link">
                    <i data-lucide="image"></i>
                    <span>Gallery</span>
                </button>
                <button onclick="scrollToSection('faq')" class="nav-link">
                    <i data-lucide="help-circle"></i>
                    <span>FAQ</span>
                </button>
                <button class="commission-btn" onclick="location.href='CommissionForm.aspx'; return false;">Commission</button>
            </div>
        </div>

        <div class="mobile-menu hidden">
            <button onclick="scrollToSection('home')" class="mobile-link">Home</button>
            <button onclick="scrollToSection('about')" class="mobile-link">About</button>
            <button onclick="scrollToSection('gallery')" class="mobile-link">Gallery</button>
            <button onclick="scrollToSection('faq')" class="mobile-link">FAQ</button>
            <button class="commission-btn mobile-commission" onclick="location.href='CommissionForm.aspx'; return false;">Commission</button>
        </div>
    </nav>

    <div id="home" class="hero">
        <div class="hero-content">
            <h1>Bring Your Vision to Life</h1>
            <p>Custom artwork created just for you by professional artists</p>
            <button class="commission-btn" onclick="location.href='CommissionForm.aspx'; return false;">Start Commission</button>

        </div>
    </div>

    <div id="about" class="about">
        <h2>About Us</h2>
        <div class="about-content">
            <p>We are a collective of passionate artists dedicated to bringing your creative visions to life. With years of experience in digital art, illustration, and character design, we pride ourselves on delivering high-quality custom artwork that exceeds expectations.</p>
            <p>Our team specializes in various styles and techniques, from realistic portraits to fantasy illustrations and concept art. We work closely with each client to understand their vision and create unique pieces that tell their story.</p>
            <div class="stats">
                <div class="stat">
                    <div class="stat-number">500+</div>
                    <div class="stat-label">Completed Projects</div>
                </div>
                <div class="stat">
                    <div class="stat-number">100%</div>
                    <div class="stat-label">Satisfaction Rate</div>
                </div>
                <div class="stat">
                    <div class="stat-number">48h</div>
                    <div class="stat-label">Response Time</div>
                </div>
            </div>
        </div>
    </div>

    <div id="gallery" class="gallery">
        <h2>Gallery</h2>
        <div class="gallery-grid" id="galleryGrid"></div>
    </div>

    <div id="faq" class="faq">
        <h2>Frequently Asked Questions</h2>
        <div class="faq-content" id="faqContent"></div>
    </div>

    <div id="artModal" class="modal hidden">
        <div class="modal-content">
            <button class="modal-close">
                <i data-lucide="x"></i>
            </button>
            <img id="modalImage" src="" alt="">
            <div class="modal-info">
                <h3 id="modalTitle"></h3>
                <p id="modalDescription"></p>
                <p id="modalPrice"></p>
                <button class="commission-btn">Commission Similar Art</button>
            </div>
        </div>
    </div>

    <script src="Script.js"></script>
</body>
</html>