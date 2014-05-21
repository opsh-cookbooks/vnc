case "${node[os]} ${node[version]}" in
ubuntu*)

  apt-install x11vnc
;;
*)
exit 1
;;
esac


template_cp "x11vnc-init-d" /etc/init.d/x11vnc
chmod +x /etc/init.d/x11vnc
update-rc.d x11vnc defaults
