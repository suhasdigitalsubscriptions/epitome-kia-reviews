Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\digic\.gemini\antigravity\brain\e28ba069-7bfd-4f34-85ec-b468d7d18e69\.user_uploaded\media_1795439431832_e5b0d1c1.jpg"
$img = [System.Drawing.Bitmap]::FromFile($srcPath)

$destDir = "c:\Users\digic\OneDrive\Desktop\epitome-kia-review-generator\assets"
if (!(Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir | Out-Null }

# 1. Header logos (x: 20, y: 20, w: 536, h: 50)
$rectHeader = [System.Drawing.Rectangle]::new(20, 20, 536, 45)
$bmpHeader = $img.Clone($rectHeader, $img.PixelFormat)
$bmpHeader.Save((Join-Path $destDir "header_logos.png"), [System.Drawing.Imaging.ImageFormat]::Png)
$bmpHeader.Dispose()

# Individual logos:
# Epitome logo: x: 20, y: 20, w: 220, h: 45
$rectEpitome = [System.Drawing.Rectangle]::new(20, 20, 220, 45)
$bmpEpitome = $img.Clone($rectEpitome, $img.PixelFormat)
$bmpEpitome.Save((Join-Path $destDir "epitome_logo.png"), [System.Drawing.Imaging.ImageFormat]::Png)
$bmpEpitome.Dispose()

# Kia logo: x: 420, y: 20, w: 130, h: 45
$rectKia = [System.Drawing.Rectangle]::new(420, 20, 130, 45)
$bmpKia = $img.Clone($rectKia, $img.PixelFormat)
$bmpKia.Save((Join-Path $destDir "kia_logo.png"), [System.Drawing.Imaging.ImageFormat]::Png)
$bmpKia.Dispose()

# 11 Cars + N/A
# Grid layout in 576x1024 image:
# Left column card x: 27, w: 255. Inside car image: x: 40, w: 230
# Right column card x: 294, w: 255. Inside car image: x: 307, w: 230
# Row 0: y ~ 265 to 345 -> Sorento (left), New Seltos (right)
# Row 1: y ~ 365 to 445 -> Syros (left), Sonet (right)
# Row 2: y ~ 465 to 545 -> Syros EV (left), Carens Clavis (right)
# Row 3: y ~ 568 to 648 -> Carens (left), Carens Clavis EV (right)
# Row 4: y ~ 671 to 751 -> EV6 (left), Carnival Limousine+ (right)
# Row 5: y ~ 774 to 854 -> EV9 (left)

# Exact car image crops:
$cars = @(
    @{ name = "sorento"; x = 35; y = 268; w = 238; h = 75 },
    @{ name = "seltos"; x = 302; y = 268; w = 238; h = 75 },
    @{ name = "syros"; x = 35; y = 370; w = 238; h = 75 },
    @{ name = "sonet"; x = 302; y = 370; w = 238; h = 75 },
    @{ name = "syros_ev"; x = 35; y = 473; w = 238; h = 75 },
    @{ name = "carens_clavis"; x = 302; y = 473; w = 238; h = 75 },
    @{ name = "carens"; x = 35; y = 575; w = 238; h = 75 },
    @{ name = "carens_clavis_ev"; x = 302; y = 575; w = 238; h = 75 },
    @{ name = "ev6"; x = 35; y = 678; w = 238; h = 75 },
    @{ name = "carnival"; x = 302; y = 678; w = 238; h = 75 },
    @{ name = "ev9"; x = 35; y = 780; w = 238; h = 75 }
)

foreach ($c in $cars) {
    $rect = [System.Drawing.Rectangle]::new($c.x, $c.y, $c.w, $c.h)
    $bmp = $img.Clone($rect, $img.PixelFormat)
    $bmp.Save((Join-Path $destDir ($c.name + ".png")), [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
}

$img.Dispose()
Write-Output "All 11 car images and logos extracted successfully!"
