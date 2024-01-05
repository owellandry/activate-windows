import subprocess
import tkinter as tk
from tkinter import messagebox, simpledialog

class ActivacionWindowsApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Activacion de Windows")
        self.root.geometry("400x500")

        self.create_widgets()

    def create_widgets(self):
        tk.Label(self.root, text="BIENVENIDO").pack(pady=10)

        versions = [
            "Windows 10/11 Home",
            "Windows 10/11 Home Single Lenguage",
            "Windows 10/11 Pro",
            "Windows 10/11 Pro N",
            "Windows 10/11 Education",
            "Windows 10/11 Education N",
            "Windows 10/11 Enterprise",
            "Windows 10/11 Enterprise N",
            "Windows 10/11 Enterprise G",
            "Windows 10/11 Enterprise G N",
            "Windows 10/11 Workstations",
            "Windows 10/11 Ultimate"
        ]

        for i, version in enumerate(versions, start=1):
            tk.Button(self.root, text=f"{i}. {version}", command=lambda v=version: self.activate_windows(v)).pack()

        tk.Button(self.root, text="Salir", command=self.root.destroy).pack(pady=20)

    def activate_windows(self, version):
        key = self.get_product_key(version)
        if key:
            try:
                subprocess.call(["slmgr.vbs", "-upk"])
                subprocess.call(["slmgr", "/ipk", key])
                subprocess.call(["slmgr", "/ato"])
                name = simpledialog.askstring('Nombre', 'Ingresa tu nombre')
                messagebox.showinfo("¡Felicidades!", f"{name}, has activado tu Windows.")

            except Exception as e:
                messagebox.showerror("Error", f"Hubo un error: {str(e)}")

    def get_product_key(self, version):
        keys = {
            "Windows 10/11 Home": "TX9XD-98N7V-6WMQ6-BX7FG-H8Q99",
            "Windows 10/11 Home Single Lenguage": "7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH",
            "Windows 10/11 Pro": "W269N-WFGWX-YVC9B-4J6C9-T83GX",
            "Windows 10/11 Pro N": "MH37W-N47XK-V7XM9-C7227-GCQG9",
            "Windows 10/11 Education": "NW6C2-QMPVW-D7KKK-3GKT6-VCFB2",
            "Windows 10/11 Education N": "2WH4N-8QGBV-H22JP-CT43Q-MDWWJ",
            "Windows 10/11 Enterprise": "NPPR9-FWDCX-D2C8J-H872K-2YT43",
            "Windows 10/11 Enterprise N": "DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4",
            "Windows 10/11 Enterprise G": "YYVX9-NTFWV-6MDM3-9PT4T-4M68B",
            "Windows 10/11 Enterprise G N": "44RPN-FTY23-9VTTB-MP9BX-T84FV",
            "Windows 10/11 Workstations": "NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J",
            "Windows 10/11 Ultimate": "Q269N-WFGWX-YVC9B-4J6C9-T83GX"
        }

        return keys.get(version, None)

if __name__ == "__main__":
    root = tk.Tk()
    app = ActivacionWindowsApp(root)
    root.mainloop()
