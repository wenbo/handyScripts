# https://colab.research.google.com/?hl=ja#scrollTo=AARn6kWozUqJ
# https://tomari.org/main/java/oto.html

import math

# 基準となる音の周波数 (A4 = 440 Hz)
A4_FREQ = 440.0

# 半音の周波数比（12乗根）
HALF_STEP_RATIO = math.pow(2, 1/12) 

# 12平均律の半音を計算する関数
def calculate_equal_temperament_scale(start_freq, num_half_steps):
    """
    指定された音から、12平均律に従ってnum_half_steps後の音の周波数を計算する。
    """
    freq = start_freq * math.pow(HALF_STEP_RATIO, num_half_steps)
    return freq

# A4から上の12音階（1オクターブ）の周波数を計算
print("--- 12平均律による音階の周波数 (A4=440Hz) ---")
for i in range(13):
    freq = calculate_equal_temperament_scale(A4_FREQ, i)
    # A4からの半音の数に応じて音名を表示 (簡略化)
    note_name = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A"][i]
    print(f"半音 {i}: {note_name} - {freq:.2f} Hz")

# A5 (A4の12半音上 = 1オクターブ上) の周波数を検証
A5_freq = calculate_equal_temperament_scale(A4_FREQ, 12)
print(f"\nA5 (12半音上) の周波数: {A5_freq:.2f} Hz (理論値: {A4_FREQ * 2} Hz)")
