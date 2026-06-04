# HowlOS 🐺
**The Instinctual Brain for Modern Robotics**

[![License](https://img.shields.io/badge/License-Choose_Below-blue.svg)](#license)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)]()
[![Release](https://img.shields.io/badge/release-v1.0.0-orange.svg)]()

HowlOS is a next-generation, high-performance universal flight and ground control firmware developed by **ArcticHowl**. Built for precision, modularity, and rapid deployment, HowlOS provides the core intelligence for autonomous UAVs, rovers, and mobile robotics.

Whether you are executing complex kinematics and sensor fusion on heavy-compute hardware, or deploying agile, connected swarms at the edge, HowlOS scales to meet the demands of modern robotics.

---

## 🧬 Ecosystem Architecture

The HowlOS repository is divided into two primary branches, specifically optimized for different hardware capabilities and operational tiers:

### 1. `branch: alpha-dev` (HowlOS Alpha)
The powerhouse tier. Designed for heavy mathematical lifting, advanced Extended Kalman Filters (EKF), and intensive C++ kinematics. 
* **Target Hardware:** **WOLFNAV Glacier** (STM32-based architectures)
* **Use Case:** Primary flight controllers, complex navigation shields, and heavy-lift UAVs.
* **Core Tech:** Hardware Abstraction Layers (HAL), high-frequency control loops, and comprehensive sensor fusion.

### 2. `branch: scout-dev` (HowlOS Scout)
The agile tier. A lightweight, highly connected variation built natively on the ESP-IDF environment.
* **Target Hardware:** **WOLFNAV Frost** (ESP32-based architectures)
* **Use Case:** Secondary control nodes, lightweight companion computers, swarm robotics, and wireless telemetry bridges.
* **Core Tech:** Edge-computing, IoT integration, and rapid deployment tasks.

---

## 🚀 Getting Started

### Cloning the Repository
To get started, clone the repository and checkout the branch corresponding to your target WOLFNAV hardware:

```bash
git clone [https://github.com/ArcticHowl/HowlOS.git](https://github.com/ArcticHowl/HowlOS.git)
cd HowlOS

# For WOLFNAV Glacier (STM32)
git checkout alpha-dev

# For WOLFNAV Frost (ESP)
git checkout scout-dev