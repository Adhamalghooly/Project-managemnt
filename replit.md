# نظام تحليل بيانات المشاريع (Project Data Analysis System)

## Overview
A web-based project management and data analysis system built with vanilla HTML/CSS/JavaScript. Supports Arabic (RTL), Excel file import/export, PDF report generation, Earned Value Management (EVM), skill-based scheduling, and resource allocation for supervisors.

The web frontend lives in `app/assets/public/index.html` and is served via Python's HTTP server on port 5000.

## Running the App
The "Start application" workflow serves the app:
```
cd app/assets/public && python3 -m http.server 5000
```

## Tech Stack
- Vanilla HTML5 / CSS3 / JavaScript (ES6)
- SheetJS (xlsx) for Excel parsing/export
- Chart.js for data visualization
- jsPDF + jspdf-autotable for PDF reports
- IndexedDB (idb) for client-side data storage
- Google Fonts (Cairo) for Arabic typography

## User Preferences
- No backend server required — purely client-side app
- All data stored in browser IndexedDB
