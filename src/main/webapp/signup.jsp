
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Hotel Rio</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Toastify CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }
        .gradient-overlay {
            background: linear-gradient(45deg, rgba(79, 70, 229, 0.9), rgba(99, 102, 241, 0.9));
        }
    </style>
</head>
<body class="bg-gray-50">
    <div class="min-h-screen flex">
        <!-- Left Side - Image Section -->
        <div class="hidden lg:flex lg:w-1/2 relative">
            <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
                 class="w-full h-full object-cover" alt="Hotel">
            <div class="absolute inset-0 gradient-overlay"></div>
            <div class="absolute inset-0 flex flex-col justify-center px-12 text-white">
                <h1 class="text-4xl font-bold mb-4">Join Hotel Rio</h1>
                <p class="text-lg mb-8">Create your account and start your luxury journey with us.</p>
                <div class="space-y-4">
                    <div class="flex items-center">
                        <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                        </svg>
                        <span>Exclusive member benefits</span>
                    </div>
                    <div class="flex items-center">
                        <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                        </svg>
                        <span>Special rates and offers</span>
                    </div>
                    <div class="flex items-center">
                        <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                        </svg>
                        <span>Easy booking management</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Side - Sign Up Form -->
        <div class="w-full lg:w-1/2 flex items-center justify-center px-4 sm:px-6 lg:px-8">
            <div class="max-w-md w-full space-y-8">
                <div class="text-center">
                    <h2 class="text-3xl font-extrabold text-gray-900">
                        Create your account
                    </h2>
                    <p class="mt-2 text-sm text-gray-600">
                        Join us and start your luxury journey
                    </p>
                </div>

                <form class="mt-8 space-y-6" action="register" method="POST">
                    <div class="space-y-4">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div>
                                <label for="firstName" class="block text-sm font-medium text-gray-700">First Name</label>
                                <div class="mt-1">
                                    <input id="firstName" name="firstName" type="text" required
                                        class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                        placeholder="Enter your first name" pattern="[A-Za-z ]{2,}" title="First name must contain only letters and be at least 2 characters long">
                                </div>
                            </div>

                            <div>
                                <label for="lastName" class="block text-sm font-medium text-gray-700">Last Name</label>
                                <div class="mt-1">
                                    <input id="lastName" name="lastName" type="text" required
                                        class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                        placeholder="Enter your last name" pattern="[A-Za-z ]{2,}" title="Last name must contain only letters and be at least 2 characters long">
                                </div>
                            </div>
                        </div>

                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-700">Email address</label>
                            <div class="mt-1">
                                <input id="email" name="email" type="email" autocomplete="email" required
                                    class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                    placeholder="Enter your email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Please enter a valid email address">
                            </div>
                        </div>

                        <div>
                            <label for="phone" class="block text-sm font-medium text-gray-700">Phone Number</label>
                            <div class="mt-1">
                                <input id="phone" name="phone" type="tel"
                                    class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                    placeholder="Enter your phone number" pattern="[0-9]{10}" title="Please enter a 10-digit phone number">
                            </div>
                        </div>

                        <div>
                            <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                            <div class="mt-1">
                                <input id="password" name="password" type="password" required
                                    class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                    placeholder="Create a password" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$" title="Password must be at least 8 characters with at least one letter, one number, and one special character">
                                <p class="mt-1 text-xs text-gray-500">Password must be at least 8 characters with at least one letter, one number, and one special character</p>
                            </div>
                        </div>

                        <div>
                            <label for="confirmPassword" class="block text-sm font-medium text-gray-700">Confirm Password</label>
                            <div class="mt-1">
                                <input id="confirmPassword" name="confirmPassword" type="password" required
                                    class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                    placeholder="Confirm your password">
                            </div>
                        </div>
                    </div>

                    <div class="flex items-center">
                        <input id="terms" name="terms" type="checkbox" required
                            class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                        <label for="terms" class="ml-2 block text-sm text-gray-900">
                            I agree to the <a href="#" class="text-indigo-600 hover:text-indigo-500">Terms and Conditions</a>
                        </label>
                    </div>

                    <div>
                        <button type="submit"
                            class="group relative w-full flex justify-center py-3 px-4 border border-transparent text-sm font-medium rounded-lg text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition duration-150 ease-in-out transform hover:scale-105">
                            Create Account
                        </button>
                    </div>
                </form>

                <div class="mt-6">
                    <div class="relative">
                        <div class="absolute inset-0 flex items-center">
                            <div class="w-full border-t border-gray-300"></div>
                        </div>
                        <div class="relative flex justify-center text-sm">
                            <span class="px-2 bg-white text-gray-500">
                                Or continue with
                            </span>
                        </div>
                    </div>
                </div>

                <div class="text-center">
                    <p class="text-sm text-gray-600">
                        Already have an account?
                        <a href="login.jsp" class="font-medium text-indigo-600 hover:text-indigo-500">
                            Sign in
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Hidden fields for server messages -->
    <input type="hidden" id="successMessage" value="${successMessage}" />
    <input type="hidden" id="errorMessage" value="${errorMessage}" />
    <input type="hidden" id="infoMessage" value="${infoMessage}" />
    <input type="hidden" id="warningMessage" value="${warningMessage}" />

    <% if(request.getAttribute("errorMessage") != null) { %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            showErrorToast('<%= request.getAttribute("errorMessage") %>');
        });
    </script>
    <% } %>

    <!-- Toastify JS -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <!-- Custom toast utilities -->
    <script src="assets/js/toast-utils.js"></script>

    <script>
        // Form validation
        document.addEventListener('DOMContentLoaded', function() {
            const signupForm = document.querySelector('form');

            signupForm.addEventListener('submit', function(event) {
                const firstName = document.getElementById('firstName').value.trim();
                const lastName = document.getElementById('lastName').value.trim();
                const email = document.getElementById('email').value.trim();
                const phone = document.getElementById('phone').value.trim();
                const password = document.getElementById('password').value;
                const confirmPassword = document.getElementById('confirmPassword').value;
                const terms = document.getElementById('terms').checked;

                let isValid = true;

                // Validate first name
                if (!firstName) {
                    showErrorToast('First name is required');
                    isValid = false;
                } else if (!/^[A-Za-z ]{2,}$/.test(firstName)) {
                    showErrorToast('First name must contain only letters and be at least 2 characters long');
                    isValid = false;
                }

                // Validate last name
                if (!lastName) {
                    showErrorToast('Last name is required');
                    isValid = false;
                } else if (!/^[A-Za-z ]{2,}$/.test(lastName)) {
                    showErrorToast('Last name must contain only letters and be at least 2 characters long');
                    isValid = false;
                }

                // Validate email
                if (!email) {
                    showErrorToast('Email is required');
                    isValid = false;
                } else if (!isValidEmail(email)) {
                    showErrorToast('Please enter a valid email address');
                    isValid = false;
                }

                // Validate phone (optional)
                if (phone && !isValidPhone(phone)) {
                    showErrorToast('Please enter a valid phone number');
                    isValid = false;
                }

                // Validate password
                if (!password) {
                    showErrorToast('Password is required');
                    isValid = false;
                } else if (!isStrongPassword(password)) {
                    showErrorToast('Password must be at least 8 characters with at least one letter, one number, and one special character');
                    isValid = false;
                }

                // Validate password confirmation
                if (password !== confirmPassword) {
                    showErrorToast('Passwords do not match');
                    isValid = false;
                }

                // Validate terms
                if (!terms) {
                    showErrorToast('You must agree to the terms and conditions');
                    isValid = false;
                }

                if (!isValid) {
                    event.preventDefault();
                }
            });

            // Email validation
            function isValidEmail(email) {
                const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                return emailRegex.test(email);
            }

            // Phone validation
            function isValidPhone(phone) {
                const phoneRegex = /^[0-9]{10}$/;
                return phoneRegex.test(phone);
            }

            // Password strength validation
            function isStrongPassword(password) {
                // At least 8 characters with at least one letter, one number, and one special character
                const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
                return passwordRegex.test(password);
            }
        });
    </script>
</body>
</html>