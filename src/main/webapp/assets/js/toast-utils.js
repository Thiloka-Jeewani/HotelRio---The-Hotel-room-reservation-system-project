/**
 * Toast utility functions for displaying notifications
 */

// Check if Toastify is available
if (typeof Toastify !== 'function') {
    console.error('Toastify library is not loaded. Make sure to include it in your HTML.');
}

// Default toast duration
const TOAST_DURATION = 3000;

// Toast positions
const POSITION_TOP_RIGHT = 'top-right';
const POSITION_TOP_CENTER = 'top-center';
const POSITION_TOP_LEFT = 'top-left';
const POSITION_BOTTOM_RIGHT = 'bottom-right';
const POSITION_BOTTOM_CENTER = 'bottom-center';
const POSITION_BOTTOM_LEFT = 'bottom-left';

// Default position
const DEFAULT_POSITION = POSITION_TOP_RIGHT;

/**
 * Show a success toast notification
 * @param {string} message - The message to display
 * @param {number} duration - Duration in milliseconds
 * @param {string} position - Position of the toast
 */
function showSuccessToast(message, duration = TOAST_DURATION, position = DEFAULT_POSITION) {
    Toastify({
        text: message,
        duration: duration,
        gravity: position.startsWith('top') ? 'top' : 'bottom',
        position: position.endsWith('left') ? 'left' : position.endsWith('right') ? 'right' : 'center',
        backgroundColor: '#10B981', // Green color
        className: 'success-toast',
        stopOnFocus: true,
    }).showToast();
}

/**
 * Show an error toast notification
 * @param {string} message - The message to display
 * @param {number} duration - Duration in milliseconds
 * @param {string} position - Position of the toast
 */
function showErrorToast(message, duration = TOAST_DURATION, position = DEFAULT_POSITION) {
    Toastify({
        text: message,
        duration: duration,
        gravity: position.startsWith('top') ? 'top' : 'bottom',
        position: position.endsWith('left') ? 'left' : position.endsWith('right') ? 'right' : 'center',
        backgroundColor: '#EF4444', // Red color
        className: 'error-toast',
        stopOnFocus: true,
    }).showToast();
}

/**
 * Show an info toast notification
 * @param {string} message - The message to display
 * @param {number} duration - Duration in milliseconds
 * @param {string} position - Position of the toast
 */
function showInfoToast(message, duration = TOAST_DURATION, position = DEFAULT_POSITION) {
    Toastify({
        text: message,
        duration: duration,
        gravity: position.startsWith('top') ? 'top' : 'bottom',
        position: position.endsWith('left') ? 'left' : position.endsWith('right') ? 'right' : 'center',
        backgroundColor: '#3B82F6', // Blue color
        className: 'info-toast',
        stopOnFocus: true,
    }).showToast();
}

/**
 * Show a warning toast notification
 * @param {string} message - The message to display
 * @param {number} duration - Duration in milliseconds
 * @param {string} position - Position of the toast
 */
function showWarningToast(message, duration = TOAST_DURATION, position = DEFAULT_POSITION) {
    Toastify({
        text: message,
        duration: duration,
        gravity: position.startsWith('top') ? 'top' : 'bottom',
        position: position.endsWith('left') ? 'left' : position.endsWith('right') ? 'right' : 'center',
        backgroundColor: '#F59E0B', // Yellow/amber color
        className: 'warning-toast',
        stopOnFocus: true,
    }).showToast();
}

// Display any server messages on page load
document.addEventListener('DOMContentLoaded', function() {
    const successMessage = document.getElementById('successMessage');
    const errorMessage = document.getElementById('errorMessage');
    const infoMessage = document.getElementById('infoMessage');
    const warningMessage = document.getElementById('warningMessage');
    
    if (successMessage && successMessage.value) {
        showSuccessToast(successMessage.value);
    }
    
    if (errorMessage && errorMessage.value) {
        showErrorToast(errorMessage.value);
    }
    
    if (infoMessage && infoMessage.value) {
        showInfoToast(infoMessage.value);
    }
    
    if (warningMessage && warningMessage.value) {
        showWarningToast(warningMessage.value);
    }
});
