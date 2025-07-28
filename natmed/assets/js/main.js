 // JavaScript to animate the progress bars
    document.addEventListener("DOMContentLoaded", () => {
      const bars = document.querySelectorAll(".single-bar");

      bars.forEach(bar => {
        const value = parseInt(bar.getAttribute("data-value"));
        const progressBar = bar.querySelector(".progress-bar");
        const percentageText = bar.querySelector(".percentage");

        let current = 0;
        const interval = setInterval(() => {
          if (current >= value) {
            clearInterval(interval);
          } else {
            current++;
            progressBar.style.width = current + "%";
            percentageText.textContent = current + "%";
            progressBar.setAttribute("aria-valuenow", current);
          }
        }, 15); // speed of animation
      });
    });


    // JavaScript to handle the form submission
    document.getElementById('adviceForm').addEventListener('submit', function(event) {
      event.preventDefault(); // Prevent default form submission

      const formData = new FormData(this);
      fetch('http://localhost:8080/api/advice/submit', {
          method: 'POST',
          body: formData
        })
        .then(response => response.json())
        .then(data => {
          alert(data.message || data.error);
          if (data.message) {
            this.reset();
          }
        })
        .catch(error => {
          console.error('Error:', error);
          alert('An error occurred. Please try again.');
        });
    });


    //  doctor details fetch data from api
    document.addEventListener('DOMContentLoaded', function() {
      fetch('http://localhost:8080/api/doctors/1')
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok ' + response.statusText);
          }
          return response.json();
        })
        .then(data => {
          // Update image
          document.getElementById('doctorImage').src = data.profile_image || 'assets/images/doctors/doctor-3.jpg';
          document.getElementById('doctorImage').alt = data.designation || 'Doctor Image';

          // Update name and designation
          document.getElementById('doctorName').textContent = data.name || 'Dr. Unknown';
          document.getElementById('doctorDesignation').textContent = data.designation || 'Unknown Designation';

          // Parse and update social links
          const socialLinks = JSON.parse(data.social_links.replace(/'/g, '"')); // Handle potential single quotes
          const socialIconsDiv = document.getElementById('socialIcons');
          socialIconsDiv.innerHTML = ''; // Clear existing icons

          for (const [platform, url] of Object.entries(socialLinks)) {
            let iconClass = '';
            switch (platform.toLowerCase()) {
              case 'facebook':
                iconClass = 'fa-brands fa-facebook-f';
                break;
              case 'x':
                iconClass = 'fa-brands fa-x-twitter';
                break;
              case 'linkedin':
                iconClass = 'fa-brands fa-linkedin';
                break;
              case 'pinterest':
                iconClass = 'fa-brands fa-pinterest-p';
                break;
              default:
                iconClass = 'fa-brands fa-link'; // Default icon
            }
            const link = document.createElement('a');
            link.href = url;
            link.className = 'social-icon';
            link.target = '_blank'; // Open in new tab
            link.innerHTML = `<i class="${iconClass}"></i>`;
            socialIconsDiv.appendChild(link);
          }
        })
        .catch(error => {
          console.error('Error fetching doctor data:', error);
          // Fallback to default values if API fails
          document.getElementById('doctorName').textContent = 'Dr. Chris Bekham';
          document.getElementById('doctorDesignation').textContent = 'Cardiac Surgeon';
          document.getElementById('doctorImage').src = 'assets/images/doctors/doctor-3.jpg';
          document.getElementById('doctorImage').alt = 'Cardiac Surgeon Image';
          const socialIconsDiv = document.getElementById('socialIcons');
          socialIconsDiv.innerHTML = `
                <a href="#" class="social-icon"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#" class="social-icon"><i class="fa-brands fa-x-twitter"></i></a>
                <a href="#" class="social-icon"><i class="fa-brands fa-linkedin"></i></a>
                <a href="#" class="social-icon"><i class="fa-brands fa-pinterest-p"></i></a>
            `;
        });
    });