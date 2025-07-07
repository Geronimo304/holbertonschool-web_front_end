from pathlib import Path

dest = Path(".")

for i in range(5, 51):           # 51 porque el límite superior es exclusivo
    (dest / f"{i}-index.html").touch()
    print(f"Creado: {i}-index.html")
