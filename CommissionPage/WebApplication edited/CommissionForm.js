document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('form1').addEventListener('submit', function (event) {
        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const explanation = document.getElementById('explanation').value.trim();
        const references = document.getElementById('references');
        const errorMessage = document.createElement('div');
        errorMessage.style.color = 'red';
        errorMessage.style.marginTop = '10px';

        const existingError = document.querySelector('.form-container .error-message');
        if (existingError) {
            existingError.remove();
        }

        if (!name || !email || !explanation || references.files.length === 0) {
            errorMessage.textContent = 'All fields are required.';
            errorMessage.classList.add('error-message');
            document.querySelector('.form-container').appendChild(errorMessage);
            event.preventDefault();
            return;
        }

        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            errorMessage.textContent = 'Please enter a valid email address.';
            errorMessage.classList.add('error-message');
            document.querySelector('.form-container').appendChild(errorMessage);
            event.preventDefault();
            return;
        }

        const allowedFileTypes = ['image/jpeg', 'image/png'];
        const maxFileSize = 5 * 1024 * 1024;
        for (let i = 0; i < references.files.length; i++) {
            const file = references.files[i];
            if (!allowedFileTypes.includes(file.type)) {
                errorMessage.textContent = 'Only JPEG and PNG files are allowed.';
                errorMessage.classList.add('error-message');
                document.querySelector('.form-container').appendChild(errorMessage);
                event.preventDefault();
                return;
            }
            if (file.size > maxFileSize) {
                errorMessage.textContent = 'Each file must not exceed 5MB.';
                errorMessage.classList.add('error-message');
                document.querySelector('.form-container').appendChild(errorMessage);
                event.preventDefault();
                return;
            }
        }

        event.preventDefault();
        alert('Your commission order is being processed. Thank you!');
        setTimeout(function () {
            window.location.href = 'index.aspx';
        }, 1000);
    });
});
