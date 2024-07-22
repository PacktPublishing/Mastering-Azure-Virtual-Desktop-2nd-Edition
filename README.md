# Mastering Azure Virtual Desktop

<a href="https://www.packtpub.com/en-in/product/mastering-azure-virtual-desktop-9781835884140?type=subscription"><img src="https://m.media-amazon.com/images/I/71py8c3sPzL._SY425_.jpg" alt="Book Name" height="256px" align="right"></a>

This is the code repository for [Mastering Azure Virtual Desktop](https://www.packtpub.com/en-in/product/mastering-azure-virtual-desktop-9781835884140?type=subscription), published by Packt.

**A practical guide to designing, implementing, and managing Azure Virtual Desktop environments**

## What is this book about?
Acquire in-depth knowledge for designing, building, and supporting Azure Virtual Desktop environments with the updated second edition of Mastering Azure Virtual Desktop. With content aligned with exam objectives, this book will help you ace the Microsoft AZ-140 exam.
This book starts with an introduction to Azure Virtual Desktop before delving into the intricacies of planning and architecting its infrastructure. As you progress, you’ll learn about the implementation process, with an emphasis on best practices and effective strategies. You’ll explore key areas such as managing and controlling access, advanced monitoring with the new Azure Monitoring Agent, and advanced application deployment.

This book covers the following exciting features: 
* Architect a robust Azure Virtual Desktop setup
* Master the essentials of networking and storage configurations
* Create and configure session host images and host pools
* Gain insights into controlling access and enhancing security
* Implement FSLogix profile containers and Cloud Cache for improved performance
* Monitor and manage the performance and health of your Azure Virtual Desktop environment

If you feel this book is for you, get your [copy](https://www.amazon.com/Mastering-Azure-Virtual-Desktop-implementing-dp-1835884148/dp/1835884148/) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations
All of the code is organized into folders. For example, Chapter 04.

The code will look like the following:
```
$vm = Get-AzVM -ResourceGroup <resourceGroupName> -Name <vmName>
$vm.LicenseType = "Windows_Client"
Update-AzVM -ResourceGroupName <resourceGroupName> -VM $vm
```

**Following is what you need for this book:**
Mastering Azure Virtual Desktop is for IT professionals, modern workspace administrators, architects, and consultants who want to learn how to design, implement, and manage Azure Virtual Desktop environments. Whether you're aiming to enhance your expertise in cloud virtualization or preparing for the Microsoft AZ-140 exam, this guide is an invaluable resource for advancing your skills.

With the following software and hardware list you can run all code files present in the book (Chapter 1-19).

### Software and Hardware List

| Chapter  | Software required                                                                                  | OS required                                 |
| -------- | ---------------------------------------------------------------------------------------------------| --------------------------------------------|
| 1-19     | Microsoft Azure Account, Powershell, Powershell ISE, Windows Remote Desktop client                 | Windows, Mac OS X, and Linux (Any)          |
| 13       | Any Printer, Universal Print Connector tool									                                      | Windows 10,11 or Windows Server 2019 or 2022 |


### Related products <Other books you may enjoy>

* A Developer’s Guide to Building Resilient Cloud Applications with Azure [[Packt]](https://www.packtpub.com/en-no/product/a-developers-guide-to-building-resilient-cloud-applications-with-azure-9781804611715) [[Amazon]](https://www.amazon.com/Developers-Guide-Building-Resilient-Applications-ebook/dp/B0BMVW6LQY)

* Azure Architecture Explained [[Packt]](https://www.packtpub.com/en-us/product/azure-architecture-explained-9781837634811) [[Amazon]](https://www.amazon.com/Azure-Architecture-Explained-David-Rend%C3%B3n/dp/1837634815)

## Get to Know the Author
**Ryan Mangan**
He has with over 17 years of experience in the tech industry, specializes in cloud and end user computing. His extensive understanding of end user computing, applications, networks, and virtualization has earned him recognition as a Microsoft MVP. Additionally, he was a VMware vExpert for over a decade. As a Chartered Fellow of the British Computer Society and holder of other esteemed titles, Ryan&rsquo;s professional dedication is evident. A humble author and speaker, he generously shares his knowledge, fostering growth in the tech community. In 2023, he established Efficient Ether, focusing on cloud optimization, sustainability, and generative AI (EtherAssist), showcasing his commitment to advancing sustainable technology solutions.

**Neil McLoughlin**
He is a seasoned IT professional based in Manchester, UK, with over 20 years of diverse experience in the industry. For a decade, he provided Citrix and VDI consultancy to large enterprise clients. About five years ago, Neil shifted his focus to cloud technologies and Desktop as a Service (DaaS), becoming a specialist in cloud-based desktop solutions, particularly Azure Virtual Desktop, Windows 365, Intune, and Microsoft 365.
Neil is deeply committed to community engagement and co-organizes the EUC Forum, an in-person conference in the UK. He is also an active Microsoft MVP. Currently, he serves as the principal technical account manager at Nerdio. 

**Marcel Meurer**
He is responsible for the professional IT services business unit at sepago GmbH in Cologne and is the founder of the development company ITProCloud GmbH. In this role, he leads a team of consultants who provide their expertise in Microsoft and Citrix technologies for customers and partners. His technical focus is Microsoft Azure platform services, and he has been a Microsoft Azure MVP since 2016. He loves working in the community. Besides his blog, he publishes tools that simplify working with the Azure cloud &ndash; especially in the context of Azure Virtual Desktop. His well-known tools include WVDAdmin and Hydra for Azure Virtual Desktop.
