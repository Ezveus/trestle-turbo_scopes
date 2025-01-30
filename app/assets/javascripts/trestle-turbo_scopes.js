document.addEventListener("DOMContentLoaded", () => {
  const currentPath = window.location.pathname;

  fetch(`${currentPath}/turbo_scopes`)
    .then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      return response.text(); // Fetching HTML as text
    })
    .then((html) => {
      const targetElement = document.getElementById("turbo-scopes");
      if (targetElement) {
        targetElement.innerHTML = html; // Replacing content of the element
      } else {
        console.warn("Element with id 'turbo-scopes' not found.");
      }
    })
    .catch((error) => {
      console.error("Error fetching turbo scopes:", error);
    });
});
