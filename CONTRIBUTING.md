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
