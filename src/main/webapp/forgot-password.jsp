<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password - Hotel Rio</title>
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
                <h1 class="text-4xl font-bold mb-4">Reset Your Password</h1>
                <p class="text-lg mb-8">Don't worry, we'll help you get back into your account.</p>
                <div class="space-y-4">
                    <div class="flex items-center">
                        <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                        </svg>
                        <span>Quick and secure process</span>
                    </div>
                    <div class="flex items-center">
                        <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                        </svg>
                        <span>Instant email verification</span>
                    </div>
                    <div class="flex items-center">
                        <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                        </svg>
                        <span>24/7 support available</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Side - Forgot Password Form -->
        <div class="w-full lg:w-1/2 flex items-center justify-center px-4 sm:px-6 lg:px-8">
            <div class="max-w-md w-full space-y-8">
                <div class="text-center">
                    <h2 class="text-3xl font-extrabold text-gray-900">
                        Forgot your password?
                    </h2>
                    <p class="mt-2 text-sm text-gray-600">
                        Enter your email address and we'll send you a link to reset your password.
                    </p>
                </div>

                <% if(request.getAttribute("showOTPForm") != null) { %>
                <!-- OTP Verification Form -->
                <form class="mt-8 space-y-6" action="forgotPassword" method="POST">
                    <input type="hidden" name="action" value="verifyOTP">
                    <input type="hidden" name="email" value="${param.email}">

                    <div>
                        <label for="otp" class="block text-sm font-medium text-gray-700">OTP Code</label>
                        <div class="mt-1">
                            <input id="otp" name="otp" type="text" required
                                class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                placeholder="Enter the OTP sent to your email">
                        </div>
                    </div>

                    <div>
                        <label for="newPassword" class="block text-sm font-medium text-gray-700">New Password</label>
                        <div class="mt-1">
                            <input id="newPassword" name="newPassword" type="password" required
                                class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                placeholder="Create a new password"
                                pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
                                title="Password must be at least 8 characters with at least one letter, one number, and one special character">
                        </div>
                        <p class="mt-1 text-xs text-gray-500">Password must be at least 8 characters with at least one letter, one number, and one special character</p>
                    </div>

                    <div>
                        <label for="confirmPassword" class="block text-sm font-medium text-gray-700">Confirm Password</label>
                        <div class="mt-1">
                            <input id="confirmPassword" name="confirmPassword" type="password" required
                                class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                placeholder="Confirm your new password">
                        </div>
                    </div>

                    <div>
                        <button type="submit"
                            class="group relative w-full flex justify-center py-3 px-4 border border-transparent text-sm font-medium rounded-lg text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition duration-150 ease-in-out transform hover:scale-105">
                            Reset Password
                        </button>
                    </div>
                </form>
                <% } else { %>
                <!-- Email Form -->
                <form class="mt-8 space-y-6" action="forgotPassword" method="POST">
                    <input type="hidden" name="action" value="sendOTP">
                    <div>
                        <label for="email" class="block text-sm font-medium text-gray-700">Email address</label>
                        <div class="mt-1">
                            <input id="email" name="email" type="email" autocomplete="email" required
                                class="appearance-none block w-full px-4 py-3 border border-gray-300 rounded-lg placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition duration-150 ease-in-out"
                                placeholder="Enter your email">
                        </div>
                    </div>

                    <div>
                        <button type="submit"
                            class="group relative w-full flex justify-center py-3 px-4 border border-transparent text-sm font-medium rounded-lg text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition duration-150 ease-in-out transform hover:scale-105">
                            Send OTP
                        </button>
                    </div>
                </form>
                <% } %>

                <div class="text-center">
                    <p class="text-sm text-gray-600">
                        Remember your password?
                        <a href="login.jsp" class="font-medium text-indigo-600 hover:text-indigo-500">
                            Sign in
                        </a>
                    </p>
                </div>

                <div class="mt-6">
                    <div class="relative">
                        <div class="absolute inset-0 flex items-center">
                            <div class="w-full border-t border-gray-300"></div>
                        </div>
                        <div class="relative flex justify-center text-sm">
                            <span class="px-2 bg-white text-gray-500">
                                Need help?
                            </span>
                        </div>
                    </div>

                    <div class="mt-6 text-center">
                        <a href="#" class="text-sm font-medium text-indigo-600 hover:text-indigo-500">
                            Contact Support
                        </a>
                    </div>
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

    <% if(request.getAttribute("successMessage") != null) { %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            showSuccessToast('<%= request.getAttribute("successMessage") %>');
        });
    </script>
    <% } %>

    <!-- Toastify JS -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <!-- Custom toast utilities -->
    <script src="assets/js/toast-utils.js"></script>

    <script>
        // Password validation
        document.addEventListener('DOMContentLoaded', function() {
            const newPasswordInput = document.getElementById('newPassword');
            const confirmPasswordInput = document.getElementById('confirmPassword');

            if (confirmPasswordInput && newPasswordInput) {
                // Password match validation
                confirmPasswordInput.addEventListener('input', function() {
                    if (newPasswordInput.value !== confirmPasswordInput.value) {
                        confirmPasswordInput.setCustomValidity("Passwords don't match");
                    } else {
                        confirmPasswordInput.setCustomValidity('');
                    }
                });

                newPasswordInput.addEventListener('input', function() {
                    if (newPasswordInput.value !== confirmPasswordInput.value && confirmPasswordInput.value) {
                        confirmPasswordInput.setCustomValidity("Passwords don't match");
                    } else {
                        confirmPasswordInput.setCustomValidity('');
                    }

                    // Password strength validation
                    const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
                    if (!passwordRegex.test(newPasswordInput.value) && newPasswordInput.value) {
                        newPasswordInput.setCustomValidity("Password must be at least 8 characters with at least one letter, one number, and one special character");
                    } else {
                        newPasswordInput.setCustomValidity('');
                    }
                });
            }
        });
    </script>
</body>
</html>