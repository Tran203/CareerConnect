// Job data - Replace this with your actual job data
const jobData = [
  {
    title: "Frontend Developer",
    company: "Example Company",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non neque maximus, rhoncus massa id, ultrices enim.",
    requirements: ["Bachelor's degree in Computer Science or related field", "Experience with HTML, CSS, and JavaScript", "Strong problem-solving skills"]
  },
  {
    title: "Backend Developer",
    company: "Another Company",
    description: "Duis ut ullamcorper lectus. Phasellus at nibh fringilla, condimentum erat id, auctor est.",
    requirements: ["Master's degree in Computer Engineering or equivalent", "Proficiency in Java or Python", "Knowledge of database systems"]
  },
  {
    title: "Data Analyst",
    company: "Data Solutions Inc.",
    description: "Praesent ullamcorper, tellus in dignissim varius, sem libero fringilla nisl, sed gravida ligula urna ac nulla.",
    requirements: ["Bachelor's degree in Statistics or related field", "Experience with data analysis tools", "Strong analytical and problem-solving skills"]
  },
  {
    title: "UI/UX Designer",
    company: "Creative Studios",
    description: "Aenean vulputate, risus a volutpat consectetur, felis velit aliquet augue, ac semper urna diam id lacus.",
    requirements: ["Bachelor's degree in Design or related field", "Proficiency in design software", "Understanding of user-centered design principles"]
  },
  {
    title: "Network Administrator",
    company: "Tech Solutions Ltd.",
    description: "Nulla in arcu consectetur, bibendum ex eget, finibus turpis. Fusce sit amet sem elit.",
    requirements: ["Bachelor's degree in Network Administration or related field", "Experience with network infrastructure", "Knowledge of network security protocols"]
  },
  {
    title: "Project Manager",
    company: "Global Enterprises",
    description: "Curabitur sagittis justo vel sapien fringilla dignissim. Nam ullamcorper lacus eget metus ultricies fermentum.",
    requirements: ["Bachelor's degree in Business or related field", "Experience in project management", "Strong leadership and communication skills"]
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

    const jobRequirements = document.createElement("ul");
    jobRequirements.classList.add("job-requirements");
    job.requirements.forEach(requirement => {
      const requirementItem = document.createElement("li");
      requirementItem.textContent = requirement;
      jobRequirements.appendChild(requirementItem);
    });

    const applyButton = document.createElement("a");
    applyButton.classList.add("apply-button");
    applyButton.href = "#";
    applyButton.textContent = "Apply Now";

    // Add event listener to the "Apply Now" button
    applyButton.addEventListener("click", () => {
      alert(`You clicked the "Apply Now" button for the ${job.title} position.`);
    });

    jobCard.appendChild(jobTitle);
    jobCard.appendChild(jobCompany);
    jobCard.appendChild(jobDescription);
    jobCard.appendChild(jobRequirements);
    jobCard.appendChild(applyButton);

    jobListings.appendChild(jobCard);
  });
}

// Call the function to populate job listings when the page loads
window.addEventListener("load", populateJobListings);
