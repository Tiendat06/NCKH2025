# frontend

NCKH 2024-2025

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

(*) **Project Structure**  
-- app: handle system's logic  
|----- controllers: only use to directional (always note the route above the function)  
|----- middlewares: only use to process the pre-request  
|----- models: only use to mapping with database  
|----- repository: get the necessary data from database only  
|----- services: process the logical of the function    
|----- validator: validator data (Input, Output)       
-- config: handle system's configuration  
-- assets: vendor for static information  
|----- img: divided by function  
|----- video: divided by function  
-- routes: redirect by router  
-- resources: views and styles per views  
|----- styles: styles per views  
|----- views: view  
-- shared: reusable   
|----- component: reusable Widget  
|----- constants: system's constants  
|----- utils: reusable function per 1 or n page   
-- main.dart  
