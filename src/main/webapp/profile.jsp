
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.tourism.model.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile - Hotel Rio</title>
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

        /* Dropdown menu styles */
        .dropdown-menu {
            display: none;
            position: absolute;
            right: 0;
            margin-top: 0.5rem;
            width: 12rem;
            background-color: white;
            border-radius: 0.375rem;
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
            z-index: 10;
            padding: 0.25rem 0;
        }

        .dropdown-menu.show {
            display: block;
        }

        .dropdown-item {
            display: block;
            padding: 0.5rem 1rem;
            font-size: 0.875rem;
            color: #4B5563;
        }

        .dropdown-item:hover {
            background-color: #EEF2FF;
        }

        .dropdown-item.active {
            background-color: #E0E7FF;
        }
    </style>
</head>
<body class="bg-gray-50">
    <%
    // Check if user is logged in
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    %>

    <!-- Navigation -->
    <nav class="bg-white shadow-lg">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <a href="index.jsp" class="text-2xl font-bold text-indigo-600">Hotel Rio</a>
                </div>
                <div class="flex items-center space-x-4">
                    <a href="index.jsp" class="text-gray-700 hover:text-indigo-600">Home</a>
                    <a href="#" class="text-gray-700 hover:text-indigo-600">Rooms</a>
                    <a href="#" class="text-gray-700 hover:text-indigo-600">About</a>
                    <a href="#" class="text-gray-700 hover:text-indigo-600">Contact</a>

                    <div class="relative" id="userDropdown">
                        <button id="dropdownButton" class="flex items-center text-gray-700 hover:text-indigo-600 focus:outline-none">
                            <span>Welcome, <%= user.getFirstName() %></span>
                            <svg class="ml-1 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                            </svg>
                        </button>
                        <div id="dropdownMenu" class="dropdown-menu">
                            <a href="profile.jsp" class="dropdown-item active">Profile</a>
                            <a href="bookings.jsp" class="dropdown-item">My Bookings</a>
                            <a href="logout" class="dropdown-item">Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Profile Section -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div class="bg-white shadow-xl rounded-lg overflow-hidden">
            <!-- Profile Header -->
            <div class="bg-indigo-600 h-48 relative">
                <div class="absolute bottom-0 left-0 w-full transform translate-y-1/2 flex justify-center">
                    <div class="h-32 w-32 rounded-full border-4 border-white overflow-hidden bg-white">
                        <img src="https://th.bing.com/th/id/OIP.lcdOc6CAIpbvYx3XHfoJ0gHaF3?cb=iwc2&rs=1&pid=ImgDetMain" alt="Profile" class="h-full w-full object-cover">
                    </div>
                </div>
            </div>

            <!-- Profile Info -->
            <div class="pt-20 pb-8 px-8">
                <div class="text-center mb-8">
                    <h1 class="text-2xl font-bold text-gray-900"><%= user.getFirstName() + " " + user.getLastName() %></h1>
                    <p class="text-gray-600"><%= user.getEmail() %></p>
                </div>

                <!-- Profile Tabs -->
                <div class="border-b border-gray-200 mb-8">
                    <div class="flex justify-center space-x-8">
                        <button class="border-b-2 border-indigo-600 text-indigo-600 pb-4 px-2 font-medium">Personal Info</button>
                        <button class="text-gray-500 pb-4 px-2 font-medium hover:text-gray-700">Bookings</button>
                        <button class="text-gray-500 pb-4 px-2 font-medium hover:text-gray-700">Preferences</button>
                        <button class="text-gray-500 pb-4 px-2 font-medium hover:text-gray-700">Payment Methods</button>
                    </div>
                </div>

                <!-- Personal Info Form -->
                <div class="max-w-2xl mx-auto">
                    <form class="space-y-6" action="updateProfile" method="POST">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="firstName" class="block text-sm font-medium text-gray-700">First Name</label>
                                <input type="text" id="firstName" name="firstName" value="<%= user.getFirstName() %>"
                                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                            </div>
                            <div>
                                <label for="lastName" class="block text-sm font-medium text-gray-700">Last Name</label>
                                <input type="text" id="lastName" name="lastName" value="<%= user.getLastName() %>"
                                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                            </div>
                        </div>

                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-700">Email Address</label>
                            <input type="email" id="email" name="email" value="<%= user.getEmail() %>" readonly
                                class="mt-1 block w-full rounded-md border-gray-300 bg-gray-100 shadow-sm py-2 px-3">
                            <p class="mt-1 text-xs text-gray-500">Email cannot be changed</p>
                        </div>

                        <div>
                            <label for="phone" class="block text-sm font-medium text-gray-700">Phone Number</label>
                            <input type="tel" id="phone" name="phone" value="<%= user.getPhone() != null ? user.getPhone() : "" %>"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                        </div>

                        <div>
                            <label for="address" class="block text-sm font-medium text-gray-700">Address</label>
                            <input type="text" id="address" name="address" value="<%= user.getAddress() != null ? user.getAddress() : "" %>"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                        </div>

                        <div>
                            <label for="dob" class="block text-sm font-medium text-gray-700">Date of Birth</label>
                            <input type="date" id="dob" name="dob" value="<%= user.getDob() != null ? user.getDob() : "" %>"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                        </div>

                        <div>
                            <label for="travelPreference" class="block text-sm font-medium text-gray-700">Travel Preferences</label>
                            <select id="travelPreference" name="travelPreference"
                                class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                                <option value="Luxury" <%= "Luxury".equals(user.getTravelPreference()) ? "selected" : "" %>>Luxury</option>
                                <option value="Business" <%= "Business".equals(user.getTravelPreference()) ? "selected" : "" %>>Business</option>
                                <option value="Economy" <%= "Economy".equals(user.getTravelPreference()) ? "selected" : "" %>>Economy</option>
                                <option value="Family" <%= "Family".equals(user.getTravelPreference()) ? "selected" : "" %>>Family</option>
                                <option value="Adventure" <%= "Adventure".equals(user.getTravelPreference()) ? "selected" : "" %>>Adventure</option>
                            </select>
                        </div>

                        <div class="border-t border-gray-200 pt-6">
                            <h3 class="text-lg font-medium text-gray-900">Change Password</h3>
                            <p class="mt-1 text-sm text-gray-500">Leave blank if you don't want to change your password</p>

                            <div class="mt-4 space-y-4">
                                <div>
                                    <label for="currentPassword" class="block text-sm font-medium text-gray-700">Current Password</label>
                                    <input type="password" id="currentPassword" name="currentPassword"
                                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                                </div>

                                <div>
                                    <label for="newPassword" class="block text-sm font-medium text-gray-700">New Password</label>
                                    <input type="password" id="newPassword" name="newPassword"
                                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                                </div>

                                <div>
                                    <label for="confirmPassword" class="block text-sm font-medium text-gray-700">Confirm New Password</label>
                                    <input type="password" id="confirmPassword" name="confirmPassword"
                                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 py-2 px-3">
                                </div>
                            </div>
                        </div>

                        <div class="flex space-x-4">
                            <button type="submit" class="flex-1 flex justify-center py-3 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition duration-150 ease-in-out">
                                Save Changes
                            </button>

                            <a href="deleteAccount" onclick="return confirm('Are you sure you want to delete your account? This action cannot be undone.')"
                                class="flex-1 flex justify-center py-3 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-red-600 hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition duration-150 ease-in-out">
                                Delete Account
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white mt-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <h3 class="text-xl font-bold mb-4">Hotel Rio</h3>
                    <p class="text-gray-400">Experience luxury living at its finest.</p>
                </div>
                <div>
                    <h4 class="text-lg font-semibold mb-4">Quick Links</h4>
                    <ul class="space-y-2">
                        <li><a href="index.jsp" class="text-gray-400 hover:text-white">Home</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Rooms</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">About</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white">Contact</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="text-lg font-semibold mb-4">Contact</h4>
                    <ul class="space-y-2 text-gray-400">
                        <li>123 Hotel Street</li>
                        <li>City, Country</li>
                        <li>Phone: +1 234 567 890</li>
                        <li>Email: info@hotelrio.com</li>
                    </ul>
                </div>
                <div>
                    <h4 class="text-lg font-semibold mb-4">Newsletter</h4>
                    <form class="space-y-4">
                        <input type="email" placeholder="Enter your email" class="w-full px-4 py-2 rounded-md bg-gray-800 text-white">
                        <button class="w-full bg-indigo-600 text-white px-4 py-2 rounded-md hover:bg-indigo-700">
                            Subscribe
                        </button>
                    </form>
                </div>
            </div>
            <div class="mt-8 pt-8 border-t border-gray-800 text-center text-gray-400">
                <p>&copy; 2024 Hotel Rio. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Hidden fields for server messages -->
    <input type="hidden" id="successMessage" value="${successMessage}" />
    <input type="hidden" id="errorMessage" value="${errorMessage}" />
    <input type="hidden" id="infoMessage" value="${infoMessage}" />
    <input type="hidden" id="warningMessage" value="${warningMessage}" />

    <!-- Toastify JS -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <!-- Custom toast utilities -->
    <script src="assets/js/toast-utils.js"></script>

    <script>
        // Dropdown Menu JavaScript
        document.addEventListener('DOMContentLoaded', function() {
            const dropdownButton = document.getElementById('dropdownButton');
            const dropdownMenu = document.getElementById('dropdownMenu');

            if (dropdownButton && dropdownMenu) {
                // Toggle dropdown when button is clicked
                dropdownButton.addEventListener('click', function(e) {
                    e.stopPropagation();
                    dropdownMenu.classList.toggle('show');
                });

                // Close dropdown when clicking outside
                document.addEventListener('click', function(e) {
                    if (!dropdownMenu.contains(e.target) && !dropdownButton.contains(e.target)) {
                        dropdownMenu.classList.remove('show');
                    }
                });

                // Prevent dropdown from closing when clicking inside it
                dropdownMenu.addEventListener('click', function(e) {
                    // Don't stop propagation here to allow links to work
                });
            }
        });

        // Form validation
        document.addEventListener('DOMContentLoaded', function() {
            const profileForm = document.querySelector('form');

            profileForm.addEventListener('submit', function(event) {
                const firstName = document.getElementById('firstName').value.trim();
                const lastName = document.getElementById('lastName').value.trim();
                const currentPassword = document.getElementById('currentPassword').value;
                const newPassword = document.getElementById('newPassword').value;
                const confirmPassword = document.getElementById('confirmPassword').value;

                let isValid = true;

                // Validate first name
                if (!firstName) {
                    showErrorToast('First name is required');
                    isValid = false;
                }

                // Validate last name
                if (!lastName) {
                    showErrorToast('Last name is required');
                    isValid = false;
                }

                // Validate password change if attempted
                if (currentPassword || newPassword || confirmPassword) {
                    if (!currentPassword) {
                        showErrorToast('Current password is required to change password');
                        isValid = false;
                    }

                    if (!newPassword) {
                        showErrorToast('New password is required');
                        isValid = false;
                    } else if (newPassword.length < 8) {
                        showErrorToast('New password must be at least 8 characters');
                        isValid = false;
                    }

                    if (newPassword !== confirmPassword) {
                        showErrorToast('New passwords do not match');
                        isValid = false;
                    }
                }

                if (!isValid) {
                    event.preventDefault();
                }
            });
        });
    </script>
</body>
</html>