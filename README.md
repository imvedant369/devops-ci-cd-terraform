🚀 Terraform CI/CD Pipeline Project

👋 About This Project

This project is a simple DevOps setup where I used Terraform and GitHub Actions to automate the creation of AWS infrastructure.

The goal was to understand how real-world teams manage infrastructure using code, automation, and proper workflow (PR-based deployment) instead of doing things manually.



🧠 What I Built

- Created multiple AWS S3 buckets using Terraform
- Used variables and for_each to avoid repetitive code
- Configured remote state using S3
- Built a CI/CD pipeline using GitHub Actions
- Followed a feature branch → PR → merge → deploy workflow


⚙️ Tech Stack

- Terraform
- AWS (S3)
- Git & GitHub
- GitHub Actions



📁 Project Structure

devops-learning/
│
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   ├── backend.tf
│   ├── variables.tf
│
└── .github/workflows/
    └── terraform.yaml


🔄 How the Workflow Works

1. I make changes in a feature branch
2. When I push code → Terraform Plan runs (to preview changes)
3. I create a Pull Request (PR)
4. After review, the PR is merged into "main"
5. On merge → Terraform Apply runs automatically
6. Infrastructure gets created in AWS

👉 There is also a manual destroy option to delete resources when needed.



🧩 Key Concepts Used

🔹 Dynamic Resource Creation

Instead of creating buckets one by one, I used:

- "for_each"
- variables

This allows Terraform to create multiple resources in a clean way.



🔹 Remote State (Backend)

I used an S3 bucket to store Terraform state so that:

- State is not lost
- Pipeline and local system stay in sync



🔹 CI/CD Pipeline

The pipeline is divided into 3 stages:

- Plan → Runs on feature branches
- Apply → Runs only on main branch
- Destroy → Runs manually when needed



🔐 Security

- AWS credentials are stored securely using GitHub Secrets
- Sensitive files are ignored using ".gitignore"



🎯 What I Learned

- How to automate infrastructure using Terraform
- How CI/CD works in real DevOps workflows
- Importance of PR-based deployment
- Handling real errors like missing credentials in pipeline



✅ Final Outcome

- Fully working Terraform + CI/CD pipeline
- Infrastructure created and managed through code
- Clean workflow similar to real company practices


💬 Final Note

This project helped me understand how DevOps works in real scenarios.
Still learning and improving 🚀
