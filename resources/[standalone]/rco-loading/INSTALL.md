# RCO Loading Screen - Installation Guide

## 📋 Table of Contents
- [Installation](#installation)
- [Configuration](#configuration)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)

## 🚀 Installation

### 1. Download and Extract
- Download the `rco-loading` resource
- Extract it to your server's `resources` folder
- The folder structure should be: `resources/rco-loading/`

### 2. Add to server.cfg
Add this line to your `server.cfg`:
```
ensure rco-loading
```

### 3. Start Your Server
The loading screen will automatically appear when players connect to your server.

## ⚙️ Configuration

The loading screen uses JSON configuration files located in the `web/build/config/` folder:
- **config.json**: Background, music, loading, and animation settings
- **locales.json**: Language settings and tips for all supported languages

### Language Configuration
To change the language of tips, edit the `web/build/config/locales.json` file:

```json
{
  "defaultLanguage": "pt",
  "locales": {
    "pt": {
      "tips": [
        {
          "title": "DICA DIÁRIA",
          "description": "Use seu cavalo para viajar mais rápido pelo mapa"
        }
      ]
    },
    "en": {
      "tips": [
        {
          "title": "DAILY TIP", 
          "description": "Use your horse to travel faster across the map"
        }
      ]
    }
  }
}
```

**Available Languages**: `pt`, `en`, `es`, `ru`, `fr`, `de`

To change the default language, modify the `defaultLanguage` value in `locales.json` and rebuild the web interface.

### Configuration Files

#### config.json
Contains all UI settings for background, music, loading, and animations:

```json
{
  "Background": {
    "useVideo": true,
    "video": {
      "loop": true,
      "muted": true,
      "autoplay": true
    }
  },
  "Music": {
    "enabled": true,
    "music": {
      "autoplay": true,
      "loop": true,
      "volume": 0.5,
      "showControls": true
    }
  },
  "Loading": {
    "progressSpeed": 80,
    "completionDelay": 2000,
    "maxTimeout": 15
  },
  "Animations": {
    "enabled": true,
    "fadeInDuration": 0.5,
    "slideAnimationDuration": 1.2,
    "tipsAnimationDelay": 2.0
  }
}
```

#### locales.json
Contains language settings and tips:

```json
{
  "defaultLanguage": "pt",
  "locales": {
    "pt": {
      "tips": [
        {
          "title": "DICA DIÁRIA",
          "description": "Use seu cavalo para viajar mais rápido pelo mapa"
        }
      ]
    },
    "en": {
      "tips": [
        {
          "title": "DAILY TIP",
          "description": "Use your horse to travel faster across the map"
        }
      ]
    }
  }
}
```

## 🎨 Customization

### Changing Background
You can replace the background by changing these files in the `build/assets/` folder:
- **Video Background**: Replace `bg_video.webm` with your own video
- **Image Background**: Replace `loading_bg.png` with your own image

### Changing Music
Replace `loading.mp3` in the `build/assets/` folder with your own music file.

### Changing UI Elements
You can replace these files in the `build/assets/` folder:
- `BGLOW.png` - Bottom black bar decoration
- `BGUP.png` - Top black bar decoration
- `dividers.png` - Tip divider line
- `loading.png` - Loading spinner icon
- `person.png` - User icon
- `soundbar.png` - Volume bar background
- `soundbutton.png` - Volume slider button
- `soundicon.png` - Sound icon
- `soundiconmuted.png` - Muted sound icon

### Customizing Tips
Edit the tips in the `web/build/config/locales.json` file. You can add multiple languages and customize the tips:

```json
{
  "defaultLanguage": "pt",
  "locales": {
    "pt": {
      "tips": [
        {
          "title": "DICA DIÁRIA",
          "description": "Sua dica personalizada aqui"
        },
        {
          "title": "DICA DE SOBREVIVÊNCIA", 
          "description": "Mantenha-se hidratado e bem alimentado"
        }
      ]
    },
    "en": {
      "tips": [
        {
          "title": "DAILY TIP",
          "description": "Your custom tip here"
        }
      ]
    }
  }
}
```


### Changing Font
The resource uses the "RDR Lino Regular" font. You can replace `RDRLino-Regular.ttf` in the `build/assets/` folder with your own font file.


## 🐛 Troubleshooting

### Loading Screen Not Appearing
1. Check if the resource is properly started in your server console
2. Verify the resource name is exactly `rco-loading`
3. Make sure all files are in the correct location

### Video Not Playing
1. Ensure your video file is in WebM format
2. Check if `Background.useVideo = true` in `config.json`
3. Try using an image background instead by setting `useVideo = false`

### Music Not Playing
1. Check if `Music.enabled = true` in `config.json`
2. Verify the music file exists in `build/assets/loading.mp3`
3. Check browser console for audio errors

### Tips Not Showing
1. Check if tips are properly configured in `locales.json`
2. Verify the `defaultLanguage` setting matches your tips
3. Ensure the JSON syntax is valid

### Performance Issues
1. Reduce video quality or use image background
2. Lower music volume in `config.json`
3. Disable animations by setting `Animations.enabled = false`

## 🆘 Support
If you encounter any issues:
1. Check the server console for error messages
2. Verify all configuration values are correct
3. Ensure all required files are present
4. Test with default settings first

## 📄 License
This resource is provided as-is. Make sure to comply with any licensing requirements for custom assets you use. 