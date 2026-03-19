document.addEventListener('DOMContentLoaded', function() {
    const heroGraphic = document.getElementById('heroGraphic');
    if (!heroGraphic) return;

    // Parallax on scroll
    let ticking = false;
    window.addEventListener('scroll', function() {
        if (!ticking) {
            window.requestAnimationFrame(function() {
                const scrollY = window.scrollY;
                const rotation = scrollY * 0.05;
                const translateY = scrollY * 0.3;
                const scale = Math.max(0.6, 1 - scrollY * 0.0008);
                const opacity = Math.max(0, 1 - scrollY * 0.002);

                heroGraphic.style.transform =
                    'translateY(' + translateY + 'px) rotate(' + rotation + 'deg) scale(' + scale + ')';
                heroGraphic.style.opacity = opacity;

                ticking = false;
            });
            ticking = true;
        }
    });

    // Mouse parallax
    const heroSection = document.querySelector('.hero-section');
    if (heroSection) {
        heroSection.addEventListener('mousemove', function(e) {
            const rect = heroSection.getBoundingClientRect();
            const x = (e.clientX - rect.left) / rect.width - 0.5;
            const y = (e.clientY - rect.top) / rect.height - 0.5;

            const particles = heroGraphic.querySelectorAll('.hero-particle');
            particles.forEach(function(p, i) {
                const speed = (i + 1) * 8;
                p.style.transform =
                    'translate(' + (x * speed) + 'px, ' + (y * speed) + 'px)';
            });

            const svg = heroGraphic.querySelector('.hero-swift-svg');
            if (svg) {
                svg.style.transform =
                    'translate(' + (x * 15) + 'px, ' + (y * 15) + 'px)';
            }
        });
    }

    // Typing effect for hero name
    const heroName = document.querySelector('.hero-name span');
    if (heroName) {
        const text = heroName.textContent;
        heroName.textContent = '';
        heroName.style.borderRight = '2px solid var(--swift-orange)';
        let i = 0;
        function typeChar() {
            if (i < text.length) {
                heroName.textContent += text.charAt(i);
                i++;
                setTimeout(typeChar, 80);
            } else {
                setTimeout(function() {
                    heroName.style.borderRight = 'none';
                }, 1500);
            }
        }
        setTimeout(typeChar, 500);
    }

    // Staggered entrance for hero elements
    var elements = ['.hero-name', '.hero-heading', '.hero-tagline', '.hero-buttons'];
    elements.forEach(function(sel, idx) {
        var el = document.querySelector(sel);
        if (el) {
            el.style.opacity = '0';
            el.style.transform = 'translateY(30px)';
            el.style.transition = 'opacity 0.8s ease, transform 0.8s ease';
            setTimeout(function() {
                el.style.opacity = '1';
                el.style.transform = 'translateY(0)';
            }, 300 + idx * 200);
        }
    });

    // Entrance for graphic
    heroGraphic.style.opacity = '0';
    heroGraphic.style.transform = 'scale(0.8) translateY(20px)';
    heroGraphic.style.transition = 'opacity 1s ease, transform 1s ease';
    setTimeout(function() {
        heroGraphic.style.opacity = '1';
        heroGraphic.style.transform = 'scale(1) translateY(0)';
    }, 800);
});
