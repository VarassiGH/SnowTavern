// Gallery Data
const galleryItems = [
    {
        id: 1,
        title: "Fantasy Landscape",
        description: "A magical landscape featuring floating islands and crystal waterfalls",
        image: "https://images.unsplash.com/photo-1578353022142-09264fd64295?auto=format&fit=crop&q=80&w=1000",
        price: "$150"
    },
    {
        id: 2,
        title: "Character Portrait",
        description: "Detailed character illustration in anime style",
        image: "https://images.unsplash.com/photo-1580927752452-89d86da3fa0a?auto=format&fit=crop&q=80&w=1000",
        price: "$200"
    },
    {
        id: 3,
        title: "Digital Painting",
        description: "Vibrant digital painting showcasing nature and technology",
        image: "https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?auto=format&fit=crop&q=80&w=1000",
        price: "$250"
    }
];

// FAQ Data
const faqItems = [
    {
        question: "How long does a commission take?",
        answer: "Most commissions are completed within 2-3 weeks, depending on complexity and current workload."
    },
    {
        question: "What payment methods do you accept?",
        answer: "We accept PayPal, credit cards, and bank transfers. A 50% deposit is required to start the commission."
    },
    {
        question: "Can I request revisions?",
        answer: "Yes! Each commission includes up to 2 rounds of revisions to ensure you're completely satisfied."
    },
    {
        question: "What file formats will I receive?",
        answer: "You'll receive high-resolution files in both digital formats (PNG, JPG) and print-ready formats (PDF, TIFF)."
    }
];

// Initialize Lucide icons
lucide.createIcons();

// Mobile menu functionality
const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
const mobileMenu = document.querySelector('.mobile-menu');
const menuIcon = document.querySelector('.menu-icon');
const closeIcon = document.querySelector('.close-icon');

mobileMenuBtn.addEventListener('click', () => {
    mobileMenu.classList.toggle('hidden');
    menuIcon.classList.toggle('hidden');
    closeIcon.classList.toggle('hidden');
});

// Smooth scroll functionality
function scrollToSection(sectionId) {
    const element = document.getElementById(sectionId);
    if (!element) return;

    const targetPosition = element.getBoundingClientRect().top + window.pageYOffset;
    const startPosition = window.pageYOffset;
    const distance = targetPosition - startPosition;
    const duration = 800; // Animation duration in milliseconds
    let startTime = null;

    function animation(currentTime) {
        if (startTime === null) startTime = currentTime;
        const timeElapsed = currentTime - startTime;
        const run = easeInOutQuad(timeElapsed, startPosition, distance, duration);
        window.scrollTo(0, run);
        if (timeElapsed < duration) requestAnimationFrame(animation);
    }

    function easeInOutQuad(t, b, c, d) {
        t /= d / 2;
        if (t < 1) return c / 2 * t * t + b;
        t--;
        return -c / 2 * (t * (t - 2) - 1) + b;
    }

    requestAnimationFrame(animation);

    // Close the mobile menu after scrolling
    mobileMenu.classList.add('hidden');
    menuIcon.classList.remove('hidden');
    closeIcon.classList.add('hidden');
}

// Populate gallery
const galleryGrid = document.getElementById('galleryGrid');

galleryItems.forEach(item => {
    const galleryItem = document.createElement('div');
    galleryItem.className = 'gallery-item';
    galleryItem.innerHTML = `
        <img src="${item.image}" alt="${item.title}">
        <div class="gallery-info">
            <h3>${item.title}</h3>
            <p class="price">${item.price}</p>
        </div>
    `;
    galleryItem.addEventListener('click', () => openModal(item));
    galleryGrid.appendChild(galleryItem);
});

// Populate FAQ
const faqContent = document.getElementById('faqContent');

faqItems.forEach(item => {
    const faqItem = document.createElement('div');
    faqItem.className = 'faq-item';
    faqItem.innerHTML = `
        <h3>${item.question}</h3>
        <p>${item.answer}</p>
    `;
    faqContent.appendChild(faqItem);
});

// Modal functionality
const modal = document.getElementById('artModal');
const modalImage = document.getElementById('modalImage');
const modalTitle = document.getElementById('modalTitle');
const modalDescription = document.getElementById('modalDescription');
const modalPrice = document.getElementById('modalPrice');
const modalClose = document.querySelector('.modal-close');

function openModal(item) {
    modalImage.src = item.image;
    modalImage.alt = item.title;
    modalTitle.textContent = item.title;
    modalDescription.textContent = item.description;
    modalPrice.textContent = item.price;
    modal.classList.remove('hidden');
}

modalClose.addEventListener('click', () => {
    modal.classList.add('hidden');
});

// Close modal when clicking outside
modal.addEventListener('click', (e) => {
    if (e.target === modal) {
        modal.classList.add('hidden');
    }
});