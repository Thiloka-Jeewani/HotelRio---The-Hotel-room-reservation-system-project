<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ page import="com.tourism.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxury Hotel Reservations</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
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
<!-- Navigation -->
<nav class="bg-white shadow-lg">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex items-center">
                <span class="text-2xl font-bold text-indigo-600">Hotel Rio</span>
            </div>
            <div class="flex items-center space-x-4">
                <a href="#" class="text-gray-700 hover:text-indigo-600">Home</a>
                <a href="#" class="text-gray-700 hover:text-indigo-600">Rooms</a>
                <a href="#" class="text-gray-700 hover:text-indigo-600">About</a>
                <a href="#" class="text-gray-700 hover:text-indigo-600">Contact</a>

                <%
                    User sessionUser = (User) session.getAttribute("user");
                    if (sessionUser != null) {
                %>
                <div class="relative" id="userDropdown">
                    <button id="dropdownButton" class="flex items-center text-gray-700 hover:text-indigo-600 focus:outline-none">
                        <span>Welcome, <%= sessionUser.getFirstName() %></span>
                        <svg class="ml-1 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </button>
                    <div id="dropdownMenu" class="dropdown-menu">
                        <a href="profile.jsp" class="dropdown-item">Profile</a>
                        <a href="bookings.jsp" class="dropdown-item">My Bookings</a>
                        <a href="logout" class="dropdown-item">Logout</a>
                    </div>
                </div>
                <% } else { %>
                <a href="login.jsp" class="text-gray-700 hover:text-indigo-600">Login</a>
                <% } %>

                <button class="bg-indigo-600 text-white px-4 py-2 rounded-md hover:bg-indigo-700 transition duration-150 ease-in-out transform hover:scale-105">Book Now</button>
            </div>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="relative bg-indigo-900 h-screen">
    <div class="absolute inset-0">
        <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
             class="w-full h-full object-cover opacity-50" alt="Hotel">
    </div>
    <div class="relative h-full flex flex-col items-center justify-center text-center px-4 sm:px-6 lg:px-8">
        <h1 class="text-4xl font-extrabold tracking-tight text-white sm:text-5xl lg:text-6xl">
            Experience Luxury Living
        </h1>
        <p class="mt-6 text-xl text-indigo-100 max-w-3xl mx-auto">
            Book your perfect stay with us and enjoy world-class amenities, stunning views, and exceptional service.
        </p>
        <div class="mt-10">
            <a href="#" class="inline-block bg-white px-8 py-3 border border-transparent text-base font-medium rounded-md text-indigo-600 hover:bg-indigo-50">
                Book Now
            </a>
        </div>
    </div>
</div>



<!-- Footer -->
<footer class="bg-gray-900 text-white">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
            <div>
                <h3 class="text-xl font-bold mb-4">LuxStay</h3>
                <p class="text-gray-400">Experience luxury living at its finest.</p>
            </div>
            <div>
                <h4 class="text-lg font-semibold mb-4">Quick Links</h4>
                <ul class="space-y-2">
                    <li><a href="#" class="text-gray-400 hover:text-white">Home</a></li>
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
                    <li>Email: info@luxstay.com</li>
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
            <p>&copy; 2024 LuxStay. All rights reserved.</p>
        </div>
    </div>
</footer>

<!-- Dropdown Menu JavaScript -->
<script>
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
</script>
</body>
</html> <%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ page import="com.tourism.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxury Hotel Reservations</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
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
<!-- Navigation -->
<nav class="bg-white shadow-lg">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex items-center">
                <span class="text-2xl font-bold text-indigo-600">Hotel Rio</span>
            </div>
            <div class="flex items-center space-x-4">
                <a href="#" class="text-gray-700 hover:text-indigo-600">Home</a>
                <a href="#" class="text-gray-700 hover:text-indigo-600">Rooms</a>
                <a href="#" class="text-gray-700 hover:text-indigo-600">About</a>
                <a href="#" class="text-gray-700 hover:text-indigo-600">Contact</a>

                <%
                    User currentUser = (User) session.getAttribute("user");
                    if (currentUser != null) {
                %>
                <div class="relative" id="userDropdown">
                    <button id="dropdownButton" class="flex items-center text-gray-700 hover:text-indigo-600 focus:outline-none">
                        <span>Welcome, <%= currentUser.getFirstName() %></span>
                        <svg class="ml-1 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                        </svg>
                    </button>
                    <div id="dropdownMenu" class="dropdown-menu">
                        <a href="profile.jsp" class="dropdown-item">Profile</a>
                        <a href="bookings.jsp" class="dropdown-item">My Bookings</a>
                        <a href="logout" class="dropdown-item">Logout</a>
                    </div>
                </div>
                <% } else { %>
                <a href="login.jsp" class="text-gray-700 hover:text-indigo-600">Login</a>
                <% } %>

                <button class="bg-indigo-600 text-white px-4 py-2 rounded-md hover:bg-indigo-700 transition duration-150 ease-in-out transform hover:scale-105">Book Now</button>
            </div>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="relative bg-indigo-900 h-screen">
    <div class="absolute inset-0">
        <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
             class="w-full h-full object-cover opacity-50" alt="Hotel">
    </div>
    <div class="relative h-full flex flex-col items-center justify-center text-center px-4 sm:px-6 lg:px-8">
        <h1 class="text-4xl font-extrabold tracking-tight text-white sm:text-5xl lg:text-6xl">
            Experience Luxury Living
        </h1>
        <p class="mt-6 text-xl text-indigo-100 max-w-3xl mx-auto">
            Book your perfect stay with us and enjoy world-class amenities, stunning views, and exceptional service.
        </p>
        <div class="mt-10">
            <a href="#" class="inline-block bg-white px-8 py-3 border border-transparent text-base font-medium rounded-md text-indigo-600 hover:bg-indigo-50">
                Book Now
            </a>
        </div>
    </div>
</div>



<!-- Footer -->
<footer class="bg-gray-900 text-white">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
            <div>
                <h3 class="text-xl font-bold mb-4">LuxStay</h3>
                <p class="text-gray-400">Experience luxury living at its finest.</p>
            </div>
            <div>
                <h4 class="text-lg font-semibold mb-4">Quick Links</h4>
                <ul class="space-y-2">
                    <li><a href="#" class="text-gray-400 hover:text-white">Home</a></li>
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
                    <li>Email: info@luxstay.com</li>
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
            <p>&copy; 2024 LuxStay. All rights reserved.</p>
        </div>
    </div>
</footer>

<!-- Dropdown Menu JavaScript -->
<script>
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
</script>
</body>
</html>