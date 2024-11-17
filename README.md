# forensic-evidence-demo
This repository contains a set of scripts and tools used to demonstrate a forensic investigation into an insider attack scenario. The goal is to simulate the unauthorised access, data exfiltration, and analysis of evidence on a compromised workstation in a bank's IT infrastructure. The forensic tools utilised include LiME, Plaso, and swap_digger.

## Overview

A mid-sized commercial bank's IT team detected unauthorised login attempts on a critical server, followed by a system outage. The breach was traced back to an internal employee, Adam, who used a USB device to exfiltrate sensitive customer data. The following forensic tools and techniques are used to analyse the breach:

- **LiME**: To capture the volatile memory (RAM) of the compromised system.
- **Plaso**: To process and analyse log files and create a timeline of events.
- **swap_digger**: To examine the swap file for traces of sensitive data.
- **USB Exfiltration Scripts**: To simulate the copying of sensitive data to an external USB device.

## Educational Purpose Disclaimer
**Note: This project is created for educational purposes only as part of a school assignment. It is not intended for any official or real-world usage. The tools and scripts are designed to simulate an insider threat scenario in a controlled environment and should only be used in a legal, ethical, and academic context.**
