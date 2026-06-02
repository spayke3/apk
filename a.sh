repo init --depth=1 --no-repo-verify -u https://android.googlesource.com/platform/manifest -b android-14.0.0_r50 -g default,-mips,-darwin,-notdefault;/opt/crave/resync.sh;git clone https://github.com/kirasimon565/SparkOS.git -b main sparkos_overlay
  
  if [ -d "sparkos_overlay/overlay" ]
 then
    rsync -avq sparkos_overlay/overlay/ ./
  fi
  
  chmod +x sparkos_overlay/inject_branding.sh
  ./sparkos_overlay/inject_branding.sh
  
  source build/envsetup.sh
  lunch aosp_arm64-trunk_staging-userdebug
  m systemimage
  
  xz -z -9 out/target/product/generic_arm64/system.img
