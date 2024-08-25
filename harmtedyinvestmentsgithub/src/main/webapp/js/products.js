/**
 * 
 */

document.addEventListener('DOMContentLoaded', function() {
	const navLinks = document.querySelectorAll('.nav-link');
	const sections = document.querySelectorAll('.content-section');

	navLinks.forEach(link => {
		link.addEventListener('click', function(e) {
			e.preventDefault();

			// Remove activelink class from all links
			navLinks.forEach(navLink => navLink.classList.remove('activelink'));

			// Add activelink class to the clicked link
			this.classList.add('activelink');

			const targetId = this.getAttribute('data-target');

			sections.forEach(section => {
				if (section.id === targetId) {
					section.style.display = 'block';
				} else {
					section.style.display = 'none';
				}
			});
		});
	});

	// Optionally show a default section and set default active link
	const defaultLink = document.querySelector('.nav-link[data-target="view-section"]');
	if (defaultLink) {
		defaultLink.classList.add('activelink');
	}
	document.querySelector('#view-section').style.display = 'block';
});
