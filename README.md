# open-webui_secure

[![GitHub last commit](https://img.shields.io/github/last-commit/NotYuSheng/open-webui_secure?color=red)](#)

open-webui_secure is a fork of the original [open-webui](https://github.com/open-webui/open-webui) project. Our mission is to deliver a secure, CVE-free version of open-webui by continuously testing, patching vulnerabilities, and ensuring that no critical or high vulnerabilities are present.

> [!WARNING]
> This project is still a work in progress.

**Base Image:**  
`ghcr.io/open-webui/open-webui:git-e6ff416-cuda`  
**Last Updated:** 4th March 2025

## Overview

open-webui_secure provides a modern, user-friendly web interface with a focus on robust security. We actively maintain and test the following core functionalities:

- **Access Control:** Enforcing strict user permissions.
- **Admin Login:** Secure administrative authentication.
- **User Login:** Reliable and secure user authentication.
- **RAG:** (Retrieval-Augmented Generation) Enhanced data retrieval and augmentation.
- **Admin Panel:** An intuitive and secure management interface.
- **Agentic Tools:** Tools for automating administrative tasks safely.
- **Native Tool Calling:** Direct invocation of native tools in a secure manner.

## Security and Vulnerability Management

To maintain zero critical and high vulnerabilities, we integrate continuous vulnerability scanning with [Trivy](https://aquasecurity.github.io/trivy/).

### Running Vulnerability Scans with Trivy

1. **Install Trivy (Preferred DEB Package):**
   Download the latest DEB package from the [Trivy GitHub Releases](https://github.com/aquasecurity/trivy/releases):
   ```bash
   wget https://github.com/aquasecurity/trivy/releases/download/v0.52.2/trivy_0.52.2_Linux-64bit.deb
   sudo dpkg -i trivy_0.52.2_Linux-64bit.deb
   ```
2. **Commit Your Container Image:**
   Ensure your container image is tagged (e.g., `open-webui_secure:latest`):
   ```bash
   sudo docker commit open-webui_secure open-webui_secure:latest
   ```
3. **Run the Trivy Scan: Use the following command to scan your image:**
   ```bash
   sudo trivy image --timeout 120m open-webui_secure:latest
   ```
4. **Review and Address Findings:** Regularly review the scan report and patch any issues to ensure that no new critical or high vulnerabilities are introduced.

## Getting Started
### Prerequisites
- **Docker**
- **Docker Compose**
- **Trivy**

### Setup
1. Installation
   ```bash
   git clone https://github.com/yourusername/open-webui_secure.git
   cd open-webui_secure
   ```
2. Deploy the Service
   ```bash
   docker-compose up -d
   ```
3. Enter the Running Container: Open a shell session inside the container:
   ```bash
   docker exec -it open-webui_secure sh
   ```
4. **Fix CVEs:**
   
   Within the container, apply necessary fixes by uninstalling vulnerable components or making configuration adjustments. Test that the core functionalities are still working as expected.
5. **Commit Your Changes:**
   
   After verifying that all functionalities (Access Control, Admin Login, User Login, RAG, Admin Panel, Agentic Tools, Native Tool Calling) are working correctly, commit your container's state:
   ```bash
   sudo docker commit open-webui_secure open-webui_secure:latest
   ```
6. **Run a Trivy Scan:** Finally, scan your committed image for vulnerabilities:
   ```bash
   sudo trivy image --timeout 120m open-webui_secure:latest
   ```

### Core Functionalities Under Active Testing
The following functionalities will be continuously tested and maintained:
- Access Control
  - Admin Login
  - User Login
- RAG
- Agentic Tools
- Native Tool Calling

## How to Contribute

We welcome contributions to improve both security and functionality. Follow these steps to contribute:

1. **Fork the Repository:**  
   Click the "Fork" button on GitHub to create your own copy.

2. **Create a Feature Branch:**
   ```bash
   git checkout -b feature/my-feature
   ```
3. **Make Your Changes:**  
   Adhere to our coding and document standards.

4. **Run Security and Functional Tests:**
   - Run a Trivy scan on your changes to ensure no critical or high vulnerabilities are introduced.
   - Test the core functionalities (Access Control, Admin/User Login, RAG, Admin Panel, Agentic Tools, Native Tool Calling).

5. **Submit a Pull Request:**  
   Once your changes are complete, push your branch and open a pull request. Provide a clear description of your changes and the testing performed.

### Contribution Guidelines

- **Testing:** Ensure thorough testing for both security and functionality.
- **Vulnerability Scanning:** Run and attach Trivy scan reports where applicable.
- **Code Reviews:** Your changes will be reviewed for quality and adherence to security best practices.
