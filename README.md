# open-webui_secure

[![GitHub last commit](https://img.shields.io/github/last-commit/NotYuSheng/open-webui_secure?color=red)](#)

An effort to remove all critical and high CVE vulnerabilities from the popular LLM web interface [open-webui](https://github.com/open-webui/open-webui).

<!-- TRIVY_SCAN_RESULTS -->
## Latest Security Scan Results

**Last Scan:** 2025-03-09 08:28:16 UTC  
**Critical Vulnerabilities:** 0  
**High Vulnerabilities:** 0  

## Prerequisites
- **Docker**
- **Docker Compose**
- **Trivy**

## Setup
1. Installation
   ```bash
   git clone https://github.com/NotYuSheng/open-webui_secure.git
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

## Core Functionalities Under Active Testing
The following functionalities will be continuously tested and maintained:
- Access Control
  - Admin Login
  - User Login
- RAG
- Agentic Tools
- Native Tool Calling

## How to Contribute

Contributions to improve the projects are welcomed! Follow these steps to contribute:

1. **Fork the Repository:**  
   Click the "Fork" button on GitHub to create your own copy.

2. **Create a Feature Branch:**
   ```bash
   git checkout -b feature/my-feature
   ```
3. **Make Your Changes:**  
   Any changes should be added to `uninstall-vulnerable-libs.sh`.

4. **Run Security and Functional Tests:**
   - Run a Trivy scan on your changes to ensure no critical or high vulnerabilities are introduced.
   - Test the core functionalities (Access Control, Admin/User Login, RAG, Admin Panel, Agentic Tools, Native Tool Calling).

5. **Submit a Pull Request:**  
   Once your changes are complete, push your branch and open a pull request. Provide a clear description of your changes and the testing performed.

### Contribution Guidelines

- **Testing:** Ensure thorough testing for both security and functionality.
- **Vulnerability Scanning:** Run and attach Trivy scan reports where applicable.
- **Code Reviews:** Your changes will be reviewed for quality and adherence to security best practices.
