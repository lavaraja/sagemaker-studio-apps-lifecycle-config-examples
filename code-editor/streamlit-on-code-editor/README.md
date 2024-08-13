## To preview the apps running on Sagemaker Code editor we use below components. 

1. [Browse Lite](https://open-vsx.org/extension/antfu/browse-lite) (Code OSS Plugin) 
2. Headless chrome browser (To render the webpage running locally on Code editor)
3. Streamlit app ( An open source ML app for interactive data apps)

### **Step 1:** : Install the [Browse Lite](https://open-vsx.org/extension/antfu/browse-lite) (Code OSS Plugin) . 
1. Install the extension from the extension market place on code editor.
2. Alternatively you can install the extension using command line : sagemaker-code-editor --install-extension <extension-id> 
3. Replace `extention-id` with "antfu.browse-lite". The final command looks like `sagemaker-code-editor --install-extension antfu.browse-lite`

### **Step 2:** Install headless chromium browser. 
1.  Open a new terminal from the menu bar. 
2. Run the following commands to install headless chromium browser. or alternatively you can run setup `install_chromium.sh` script.
* `mkdir app & cd app`
*  `sudo apt-get update`
* `sudo apt-get install wget`
* `sudo apt-get install libxss1 libappindicator1 libindicator7` 
*  `wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`     

####  **note: ** If you get a certificate error on above command, please add `--no-check-certificate` at the end of the command and run again.

* `sudo dpkg -i google-chrome-stable_current_amd64.deb`
* `sudo apt-get install -f` 

### **Step 3:** Configure the extension to use chrome browser.
1. Open the extension `Browse Lite` and choose settings.

<img width="784" alt="Screenshot 2024-08-07 at 08 40 02" src="https://github.com/user-attachments/assets/0a2553ef-464d-4be9-90c8-dfd73c11c0cb">


2. The extension settings page will be opened.

<img width="1155" alt="Screenshot 2024-08-07 at 08 41 38" src="https://github.com/user-attachments/assets/4f167102-1d1d-4556-a972-65f983015ca8">

 3.  Under **Chrome Executable** section add path to chrome executable i.e `/usr/bin/google-chrome`

### **Step 4:**  Run the Streamlit app
* Install [Streamlit](https://docs.streamlit.io/develop/concepts/architecture/run-your-app) using `pip install streamlit` on terminal
* Run the sample `hello world` app

```
 sagemaker-user@default:~/app$ streamlit hello

 Collecting usage statistics. To deactivate, set browser.gatherUsageStats to false.

  Welcome to Streamlit. Check out our demo in your browser.

  Local URL: http://localhost:8501
  Network URL: http://169.255.255.2:8501
  External URL: http://x.x.x.x:8501

  Ready to create your own Python apps super quickly?
  Head over to https://docs.streamlit.io

  May you create awesome apps!
```

### **Step 5:**  Access the running Streamlit server using `Browse Lite` extension.

1. Open the web browser by opening the extension from command palette.  Run `Browse Lite: Open`... command to start the browser
2. Enter the app URL displayed on terminal to access the Streamlit app.

<img width="719" alt="Screenshot 2024-08-07 at 09 11 38" src="https://github.com/user-attachments/assets/9df5172a-d8af-4007-8c3a-03791d302df9">

<img width="674" alt="Screenshot 2024-08-07 at 09 11 54" src="https://github.com/user-attachments/assets/f8c06e9d-37ac-4761-ad40-7aa952b7b3ac">

<img width="552" alt="Screenshot 2024-08-07 at 09 12 14" src="https://github.com/user-attachments/assets/7315b1fa-266a-4f6a-8cce-69b661964c37">

<img width="678" alt="Screenshot 2024-08-07 at 09 21 12" src="https://github.com/user-attachments/assets/e48bb7e7-d26a-44a9-965d-e7c5d41b5391">


Additionally to persist the configuration you can use a [LifeCycle Configuration](https://docs.aws.amazon.com/sagemaker/latest/dg/code-editor-use-lifecycle-configurations.html) to auto install these packages on Code-editior start with out manually installing them on every restart.

Please share any feedback/recommendations.
