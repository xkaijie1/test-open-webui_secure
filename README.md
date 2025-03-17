# open-webui_secure

[![GitHub last commit](https://img.shields.io/github/last-commit/NotYuSheng/open-webui_secure?color=red)](#)

An effort to remove all critical and high CVE vulnerabilities from the popular LLM web interface [open-webui](https://github.com/open-webui/open-webui).

This repository runs a trivy scan workflow everytime it is updated and every midnight UTC. Results of the scan is automatically updated in the [Latest Security Scan Results](#latest-security-scan-results) section.

<!-- TRIVY_SCAN_RESULTS -->
## Latest Security Scan Results

🕒 **Last Scan (UTC):** 17 Mar 2025 01:31:13 AM UTC  
🕒 **Last Scan (SGT):** 17 Mar 2025 09:31:13 AM SGT  
🚨 **Critical Vulnerabilities:** 0  
⚠️ **High Vulnerabilities:** 0  
<!-- TRIVY_SCAN_END -->

## Base Image:
`ghcr.io/open-webui/open-webui:git-e6ff416-cuda`  
**Image Release Date:** 4th March 2025

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
5. **Commit Your Changes and Tag the Image for GHCR:**
   
   After confirming that everything works correctly, commit your container’s state with a new tag:
   ```bash
   docker commit open-webui_secure open-webui_secure:vX.X
   ```
   Next, tag your image with the proper GHCR namespace. Replace yourusername with your GitHub username:
   ```bash
   docker tag open-webui_secure:vX.X ghcr.io/yourusername/open-webui_secure:vX.X
   ```
6. **Push the Image to GitHub Container Registry (GHCR)**
   Log in to GHCR using your GitHub username and a personal access token (PAT) with the `write:packages` scope:
   ```bash
   docker login ghcr.io -u yourusername
   ```
   When prompted, enter your PAT. Then, push the tagged image:
   ```bash
   docker push ghcr.io/yourusername/open-webui_secure:vX.X
   ```
   When prompted, enter your PAT. Then, push the tagged image:
7. **Run a Trivy Scan:** Finally, scan your committed image for vulnerabilities:
   ```bash
   sudo trivy image --timeout 120m open-webui_secure:vX.X > trivy-analysis.txt
   ```
   Verify that there are no more critical or high CVEs reported.

## Core Functionalities Under Active Testing
The following functionalities will be continuously tested and maintained:
- Access Control
  - Admin Login
  - User Login
- RAG
- Agentic Tools
- Native Tool Calling
