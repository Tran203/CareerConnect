/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
// Job data - Replace this with your actual job data
const jobData = [
  {
    title: "Frontend Developer",
    company: "Example Company",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non neque maximus, rhoncus massa id, ultrices enim."
  },
  {
    title: "Backend Developer",
    company: "Another Company",
    description: "Duis ut ullamcorper lectus. Phasellus at nibh fringilla, condimentum erat id, auctor est."
  }
];

// Function to populate job listings
function populateJobListings() {
  const jobListings = document.getElementById("job-listings");

  jobData.forEach(job => {
    const jobCard = document.createElement("div");
    jobCard.classList.add("job-card");

    const jobTitle = document.createElement("h2");
    jobTitle.classList.add("job-title");
    jobTitle.textContent = job.title;

    const jobCompany = document.createElement("p");
    jobCompany.classList.add("job-company");
    jobCompany.textContent = job.company;

    const jobDescription = document.createElement("p");
    jobDescription.classList.add("job-description");
    jobDescription.textContent = job.description;

    jobCard.appendChild(jobTitle);
    jobCard.appendChild(jobCompany);
    jobCard.appendChild(jobDescription);

    jobListings.appendChild(jobCard);
  });
}

// Call the function to populate job listings when the page loads
window.addEventListener("load", populateJobListings);


