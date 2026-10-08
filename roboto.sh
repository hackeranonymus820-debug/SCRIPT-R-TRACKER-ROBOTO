#!/bin/bash

RED='\033[1;31m'
NC='\033[0m'

clear

banner() {
    clear
    echo -e "${RED}"
    cat << "EOF"
    ██╗      ██████╗ ██╗   ██╗███████╗
    ██║     ██╔═══██╗██║   ██║██╔════╝
    ██║     ██║   ██║██║   ██║█████╗  
    ██║     ██║   ██║╚██╗ ██╔╝██╔══╝  
    ███████╗╚██████╔╝ ╚████╔╝ ███████╗
    ╚══════╝ ╚═════╝   ╚═══╝  ╚══════╝
EOF
    echo -e "${NC}"
    echo -e "${RED}              ROBOTO-TRACKER${NC}"
    echo -e "${RED}         DEVELOPER BY MR.SWATBLOP${NC}"
    echo -e "${RED}============================================================${NC}"
}

loading() {
    for i in 20 40 60 80 100; do
        echo -ne "${RED}loading $i%\r${NC}"
        sleep 0.2
    done
    echo -e "${RED}done                    ${NC}"
}

nama_depan=("Alex" "Reo" "Vano" "Rizky" "Revan" "Bima" "Dafa" "Alif" "Raka" "Fajar" "Adit" "Bagas" "Rafi" "Dani" "Aldi" "Gilang" "Reno" "Farhan" "Haikal" "Genta" "Khalid" "Oki" "Teguh" "Arif" "Dodi" "Bayu" "Cahya" "Irfan" "Rama" "Rangga" "Daffa" "Fatah" "Hanif" "Jihan" "Rizki" "Amanda" "Dara" "Laras" "Syifa" "Alya" "Kayla" "Cinta" "Elsa" "Gina" "Icha" "Lia" "Naila" "Prita" "Sindi" "Ulfah" "Nadia" "Intan" "Citra" "Fitri" "Gita" "Indah" "Maya" "Putri" "Qori" "Sari" "Vina" "Yuni" "Zainab" "Dian" "Rina" "Nia" "Lilis" "Dinda" "Tia" "Nisa" "Nina" "Siti" "Dewi" "Ani" "Ratna" "Mulyani" "Kartini" "Mega" "Puan" "Nurul" "Axel" "Zayn" "Kai" "Leo" "Noel" "Ethan" "Liam" "Lucas" "Milo" "Ezra" "Aiden" "Asher" "Caleb" "Dylan" "Elio" "Felix" "Gavin" "Hugo" "Ivan" "Jasper" "Kian" "Lorenzo" "Mateo" "Nico" "Oscar" "Pablo" "Quinn" "Rafael" "Silas" "Theo" "Umar" "Vito" "Wyatt" "Xander" "Yusuf" "Zane" "Aurora" "Bella" "Chloe" "Daisy" "Elena" "Freya" "Grace" "Hazel" "Iris" "Jade" "Kiara" "Luna" "Mila" "Nora" "Olive" "Piper" "Quinn" "Ruby" "Sage" "Tessa" "Uma" "Vera" "Willa" "Xena" "Yara" "Zoe")

nama_belakang=("Ardhana" "Alvaro" "Aurel" "Axton" "Axelle" "Bryan" "Bintang" "Cakra" "Cello" "Daffa" "Desta" "Devano" "Dhika" "Dimas" "Dirga" "Dzaki" "Elvano" "Erland" "Fahri" "Faeyza" "Farel" "Farrel" "Fathan" "Fikri" "Fino" "Galang" "Gavin" "Ghani" "Gibran" "Gilang" "Hafiz" "Haidar" "Hansen" "Haris" "Ilham" "Iqbal" "Irfan" "Jefri" "Jibran" "Jovan" "Junio" "Kaisar" "Kanaya" "Keanu" "Kenzo" "Kevin" "Kiano" "Krisna" "Laksana" "Langit" "Leonel" "Lionel" "Luthfi" "Mahesa" "Malik" "Marcell" "Marsel" "Mikail" "Naufal" "Narendra" "Nathan" "Naufal" "Nizar" "Oktavian" "Pandu" "Pratama" "Radit" "Rafa" "Rafael" "Rafi" "Ragil" "Raka" "Rakan" "Rakha" "Rangga" "Rasyid" "Rava" "Rayan" "Razqa" "Revan" "Reyhan" "Rifqi" "Rifky" "Rizky" "Rizaldi" "Romeo" "Ryo" "Sabian" "Sadewa" "Sakha" "Samudra" "Sandi" "Satria" "Sean" "Sebastian" "Shawn" "Sky" "Sultan" "Syafiq" "Syamil" "Tegar" "Tirta" "Trevor" "Ubay" "Vander" "Vian" "Vino" "Vito" "Wafi" "Wahyu" "Wira" "Xavier" "Yafi" "Yudha" "Yudhistira" "Yusuf" "Zacky" "Zaki" "Zavier" "Zayn" "Zidan" "Zulfa" "Alesha" "Alika" "Alya" "Amara" "Amelia" "Anindya" "Aruna" "Arya" "Asha" "Aurora" "Ayana" "Azalea" "Bianca" "Bunga" "Callista" "Camelia" "Carissa" "Celena" "Chelsea" "Chika" "Davina" "Devina" "Dinda" "Elina" "Elvina" "Erika" "Falisha" "Farah" "Fayola" "Febby" "Gendis" "Gita" "Gladys" "Hana" "Hanin" "Hillary" "Ilona" "Inara" "Isabelle" "Jasmine" "Jelita" "Jenny" "Joana" "Kalyca" "Karin" "Kayla" "Keisha" "Kiara" "Kinanti" "Kirana" "Larissa" "Laura" "Lavanya" "Leticia" "Livia" "Lucia" "Luna" "Maira" "Maisha" "Malika" "Maura" "Megan" "Melody" "Milena" "Mischa" "Monica" "Naila" "Nalini" "Naomi" "Natalie" "Naura" "Nayla" "Nesya" "Nicole" "Nirmala" "Odette" "Olivia" "Priscilla" "Putri" "Rachel" "Raisa" "Ranaya" "Rasya" "Renata" "Rhea" "Rinjani" "Sabrina" "Safira" "Salma" "Sasha" "Sekar" "Selena" "Serena" "Shakila" "Shanaya" "Sienna" "Sofia" "Stella" "Sylvia" "Talia" "Tamara" "Tanisha" "Tara" "Tasya" "Vania" "Vanya" "Velove" "Venus" "Vera" "Veronica" "Victoria" "Violet" "Viona" "Widya" "Xaviera" "Yasmin" "Yolanda" "Yuna" "Zahra" "Zahwa" "Zalfa" "Zara" "Zelda" "Zenia" "Ziva" "Zoe")

nama_jalan=("Sudirman" "Thamrin" "Gatot Subroto" "Kuningan" "HR Rasuna Said" "MH Thamrin" "Diponegoro" "Ahmad Yani" "Pemuda" "Pahlawan" "Merdeka" "Veteran" "Sisingamangaraja" "Panglima Polim" "Fatmawati" "Cendrawasih" "Melati" "Mawar" "Anggrek" "Kenanga" "Kartini" "Dipatiukur" "Cihampelas" "Setiabudi" "Pasteur" "Suci" "Wijaya Kusuma" "Rungkut" "Gubeng" "Darmo" "Asia Afrika" "Riau" "Martadinata" "Wastukancana" "Merdeka" "Braga" "Otista" "Sukarno Hatta" "Buah Batu" "Soekarno Hatta" "Kiaracondong" "Antapani" "Cibiru" "Ujung Berung" "Cinambo" "Gedebage" "Rancasari" "Mekarwangi" "Soreang" "Ciwidey" "Lembang" "Cisarua" "Parongpong" "Cimahi" "Padalarang")

kota=("Jakarta Pusat" "Jakarta Selatan" "Jakarta Barat" "Jakarta Utara" "Jakarta Timur" "Surabaya" "Bandung" "Medan" "Semarang" "Yogyakarta" "Malang" "Denpasar" "Makassar" "Palembang" "Bogor" "Depok" "Tangerang" "Bekasi" "Cimahi" "Cirebon" "Pekanbaru" "Padang" "Lampung" "Pontianak" "Balikpapan" "Samarinda" "Banjarmasin" "Manado" "Ambon" "Mataram" "Kupang" "Jayapura" "Sorong" "Batam" "Tanjung Pinang" "Palangkaraya" "Jambi" "Bengkulu" "Palu" "Kendari" "Gorontalo" "Mamuju" "Ternate" "Tidore" "Sofifi")

pekerjaan=("karyawan swasta" "wiraswasta" "pns" "guru" "dosen" "dokter" "perawat" "polisi" "tni" "programmer" "designer" "editor" "content creator" "youtuber" "streamer" "gamer" "atlet" "musisi" "fotografer" "videografer" "arsitek" "insinyur" "pengacara" "notaris" "akuntan" "konsultan" "bankir" "teller" "kasir" "barista" "chef" "pelayan" "kurir" "driver" "ojol" "sales" "marketing" "hrd" "admin" "operator")

hobi=("gaming" "ngoding" "nonton" "dengerin musik" "baca buku" "nulis" "gambar" "desain" "fotografi" "videografi" "traveling" "hiking" "camping" "fishing" "mancing" "sepeda" "lari" "gym" "yoga" "renang" "basket" "futsal" "badminton" "tenis" "voli" "skateboard" "bmx" "motor" "mobil" "koleksi" "masak" "baking" "berkebun")

status=("single" "pacaran" "tunangan" "menikah" "cerai" "janda" "duda" "lajang")

agama=("islam" "kristen" "katolik" "hindu" "buddha" "konghucu")

gol_darah=("A" "B" "AB" "O" "A+" "B+" "AB+" "O+" "A-" "B-" "AB-" "O-")

pendidikan=("SD" "SMP" "SMA" "SMK" "MA" "D3" "D4" "S1" "S2" "S3")

provider=("Telkomsel" "Indosat" "XL" "Tri" "Smartfren" "Axis" "By.U")

bank=("BCA" "Mandiri" "BNI" "BRI" "CIMB Niaga" "Danamon" "Permata" "Panin" "OCBC" "Maybank" "BTN" "BJB" "DKI" "Jatim" "Jateng" "Sumut" "Sumsel" "Kalsel" "Sulsel")

e_wallet=("GoPay" "OVO" "Dana" "ShopeePay" "LinkAja" "Jenius" "Sakuku" "Flip" "iSaku")

rand_nama_depan() {
    echo "${nama_depan[$((RANDOM % ${#nama_depan[@]}))]}"
}
rand_nama_belakang() {
    echo "${nama_belakang[$((RANDOM % ${#nama_belakang[@]}))]}"
}
rand_jalan() {
    echo "${nama_jalan[$((RANDOM % ${#nama_jalan[@]}))]}"
}
rand_kota() {
    echo "${kota[$((RANDOM % ${#kota[@]}))]}"
}
rand_dari() {
    local arr=("$@")
    echo "${arr[$((RANDOM % ${#arr[@]}))]}"
}
rand_nik() {
    echo "$(( (RANDOM * RANDOM % 9000000000000000) + 1000000000000000 ))"
}
rand_kk() {
    echo "$(( (RANDOM * RANDOM % 9000000000000000) + 1000000000000000 ))"
}
rand_npwp() {
    echo "$(( (RANDOM % 90) + 10 )).$(( (RANDOM % 900) + 100 )).$(( (RANDOM % 900) + 100 )).$(( (RANDOM % 9) + 1 ))-$(( (RANDOM % 900) + 100 )).$(( (RANDOM % 900) + 100 ))"
}
rand_imei() {
    echo "$(( (RANDOM * RANDOM % 900000000000000) + 100000000000000 ))"
}
rand_rek() {
    echo "$(( (RANDOM * RANDOM % 9000000000) + 1000000000 ))"
}
rand_nomor() {
    echo "62$(( (RANDOM % 1000000000) + 8000000000 ))"
}

sad_pendek() {
    echo ""
    echo -e "${RED}Dia terlalu sempurna untuk aku yang banyak kurangnya${NC}"
    echo ""
}

sad_panjang() {
    echo ""
    echo -e "${RED}kadang aku mikir, aku cuma orang biasa yang gak punya apa-apa${NC}"
    echo -e "${RED}sementara dia punya segalanya, semua yang aku pengen ada di dia${NC}"
    echo -e "${RED}aku gak pernah cukup, gak pernah bisa jadi yang dia mau${NC}"
    echo -e "${RED}dan malam ini aku sadar, cinta aja gak cukup buat nahan semuanya${NC}"
    echo -e "${RED}aku cuma bisa lihat dari jauh, sambil berharap dia bahagia${NC}"
    echo -e "${RED}walau bukan sama aku${NC}"
    echo ""
}

no_to_nik() {
    clear
    banner
    echo -e "${RED}[ NO - NIK ]${NC}"
    read -p "$(echo -e ${RED})[ 62 ] > $(echo -e ${NC})" nomor
    if ! [[ "$nomor" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}nomor harus angka${NC}"
        sleep 1.5
        return
    fi
    loading
    echo -e "${RED}nik : $(rand_nik)${NC}"
    sad_pendek
    read -p ""
}

foto_to_nik() {
    clear
    banner
    echo -e "${RED}[ FOTO - NIK ]${NC}"
    read -p "$(echo -e ${RED})url foto > $(echo -e ${NC})" url
    if [ -z "$url" ]; then
        echo -e "${RED}url kosong${NC}"
        sleep 1.5
        return
    fi
    loading
    nik=$(rand_nik)
    kk=$(rand_kk)
    npwp=$(rand_npwp)
    nd=$(rand_nama_depan)
    nb=$(rand_nama_belakang)
    nb2=$(rand_nama_belakang)
    nama="$nd $nb $nb2"
    kelamin=$(rand_dari "Laki-laki" "Perempuan")
    umur=$(( (RANDOM % 14) + 17 ))
    nomor=$(rand_nomor)
    nomor2=$(rand_nomor)
    tgl="$(( (RANDOM % 28) + 1 ))-$(( (RANDOM % 12) + 1 ))-$(( (RANDOM % 13) + 1995 ))"
    tempat=$(rand_kota)
    jalan="Jl. $(rand_jalan)"
    no_rmh=$(( (RANDOM % 200) + 1 ))
    rt=$(printf "%03d" $(( (RANDOM % 20) + 1 )))
    rw=$(printf "%03d" $(( (RANDOM % 20) + 1 )))
    kota_alamat=$(rand_kota)
    kec=$(rand_kota)
    kel=$(rand_kota)
    kodepos=$(( (RANDOM % 90000) + 10000 ))
    kerja=$(rand_dari "${pekerjaan[@]}")
    hb=$(rand_dari "${hobi[@]}")
    st=$(rand_dari "${status[@]}")
    ag=$(rand_dari "${agama[@]}")
    gd=$(rand_dari "${gol_darah[@]}")
    didik=$(rand_dari "${pendidikan[@]}")
    prov=$(rand_dari "${provider[@]}")
    bk=$(rand_dari "${bank[@]}")
    ew=$(rand_dari "${e_wallet[@]}")
    imei=$(rand_imei)
    rek=$(rand_rek)
    nd_lower=$(echo "$nd" | tr '[:upper:]' '[:lower:]')
    tiktok="https://tiktok.com/@${nd_lower}$(( (RANDOM % 90) + 10 ))"
    github="https://github.com/${nd_lower}$(( (RANDOM % 90) + 10 ))"
    yt="https://youtube.com/@${nd_lower}$(( (RANDOM % 90) + 10 ))"
    ig="https://instagram.com/${nd_lower}_$(( (RANDOM % 90) + 10 ))"
    fb="https://facebook.com/${nd_lower}$(( (RANDOM % 90) + 10 ))"
    tw="https://twitter.com/${nd_lower}$(( (RANDOM % 90) + 10 ))"
    email="${nd_lower}${RANDOM}@gmail.com"
    email2="${nd_lower}.${nb,,}@yahoo.com"
    print_data_full "$nik" "$kk" "$npwp" "$nama" "$kelamin" "$umur" "$nomor" "$nomor2" "$tgl" "$tempat" "$jalan" "$no_rmh" "$rt" "$rw" "$kota_alamat" "$kec" "$kel" "$kodepos" "$kerja" "$hb" "$st" "$ag" "$gd" "$didik" "$prov" "$bk" "$ew" "$imei" "$rek" "$tiktok" "$github" "$yt" "$ig" "$fb" "$tw" "$email" "$email2"
    sad_panjang
    read -p ""
}

print_data_full() {
    echo -e "${RED}============================================================${NC}"
    echo -e "${RED}[ DATA PRIBADI ]${NC}"
    echo -e "${RED}nik : $1${NC}"
    echo -e "${RED}no kk : $2${NC}"
    echo -e "${RED}npwp : $3${NC}"
    echo -e "${RED}nama lengkap : $4${NC}"
    echo -e "${RED}kelamin : $5${NC}"
    echo -e "${RED}umur : $6 tahun${NC}"
    echo -e "${RED}nomor : $7${NC}"
    echo -e "${RED}nomor 2 : $8${NC}"
    echo -e "${RED}email : $35${NC}"
    echo -e "${RED}email 2 : $36${NC}"
    echo -e "${RED}============================================================${NC}"
    echo -e "${RED}[ KELAHIRAN ]${NC}"
    echo -e "${RED}tgl lahir : $9${NC}"
    echo -e "${RED}tempat lahir : ${10}${NC}"
    echo -e "${RED}============================================================${NC}"
    echo -e "${RED}[ ALAMAT ]${NC}"
    echo -e "${RED}alamat : ${11} No ${12}${NC}"
    echo -e "${RED}rt : ${13}${NC}"
    echo -e "${RED}rw : ${14}${NC}"
    echo -e "${RED}kota : ${15}${NC}"
    echo -e "${RED}kecamatan : ${16}${NC}"
    echo -e "${RED}kelurahan : ${17}${NC}"
    echo -e "${RED}kode pos : ${18}${NC}"
    echo -e "${RED}============================================================${NC}"
    echo -e "${RED}[ PEKERJAAN & STATUS ]${NC}"
    echo -e "${RED}pekerjaan : ${19}${NC}"
    echo -e "${RED}hobi : ${20}${NC}"
    echo -e "${RED}status : ${21}${NC}"
    echo -e "${RED}agama : ${22}${NC}"
    echo -e "${RED}gol darah : ${23}${NC}"
    echo -e "${RED}pendidikan : ${24}${NC}"
    echo -e "${RED}============================================================${NC}"
    echo -e "${RED}[ FINANSIAL ]${NC}"
    echo -e "${RED}provider : ${25}${NC}"
    echo -e "${RED}bank : ${26}${NC}"
    echo -e "${RED}e-wallet : ${27}${NC}"
    echo -e "${RED}no rekening : ${29}${NC}"
    echo -e "${RED}imei : ${28}${NC}"
    echo -e "${RED}============================================================${NC}"
    echo -e "${RED}[ SOSIAL MEDIA ]${NC}"
    if [ $((RANDOM % 2)) -eq 0 ]; then echo -e "${RED}tiktok : ${30}${NC}"; else echo -e "${RED}tiktok : tidak ada${NC}"; fi
    if [ $((RANDOM % 2)) -eq 0 ]; then echo -e "${RED}github : ${31}${NC}"; else echo -e "${RED}github : tidak ada${NC}"; fi
    if [ $((RANDOM % 2)) -eq 0 ]; then echo -e "${RED}youtube : ${32}${NC}"; else echo -e "${RED}youtube : tidak ada${NC}"; fi
    if [ $((RANDOM % 2)) -eq 0 ]; then echo -e "${RED}instagram : ${33}${NC}"; else echo -e "${RED}instagram : tidak ada${NC}"; fi
    if [ $((RANDOM % 2)) -eq 0 ]; then echo -e "${RED}facebook : ${34}${NC}"; else echo -e "${RED}facebook : tidak ada${NC}"; fi
    if [ $((RANDOM % 2)) -eq 0 ]; then echo -e "${RED}twitter : ${35}${NC}"; else echo -e "${RED}twitter : tidak ada${NC}"; fi
    echo -e "${RED}============================================================${NC}"
}

url_to_nik() {
    clear
    banner
    echo -e "${RED}[ URL - NIK ]${NC}"
    read -p "$(echo -e ${RED})url > $(echo -e ${NC})" url
    if [ -z "$url" ]; then
        echo -e "${RED}url kosong${NC}"
        sleep 1.5
        return
    fi
    loading
    echo -e "${RED}nik : $(rand_nik)${NC}"
    sad_pendek
    read -p ""
}

no_to_alldata() {
    clear
    banner
    echo -e "${RED}[ NO - ALLDATA ]${NC}"
    read -p "$(echo -e ${RED})[ 62 ] > $(echo -e ${NC})" nomor
    if ! [[ "$nomor" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}nomor harus angka${NC}"
        sleep 1.5
        return
    fi
    loading
    nik=$(rand_nik)
    kk=$(rand_kk)
    npwp=$(rand_npwp)
    nama="$(rand_nama_depan) $(rand_nama_belakang) $(rand_nama_belakang)"
    umur=$(( (RANDOM % 14) + 17 ))
    gender=$(rand_dari "Laki-laki" "Perempuan")
    tgl="$(( (RANDOM % 28) + 1 ))-$(( (RANDOM % 12) + 1 ))-$(( (RANDOM % 13) + 1995 ))"
    tempat=$(rand_kota)
    jalan="Jl. $(rand_jalan)"
    no_rmh=$(( (RANDOM % 200) + 1 ))
    rt=$(printf "%03d" $(( (RANDOM % 20) + 1 )))
    rw=$(printf "%03d" $(( (RANDOM % 20) + 1 )))
    kota_alamat=$(rand_kota)
    kec=$(rand_kota)
    kel=$(rand_kota)
    kodepos=$(( (RANDOM % 90000) + 10000 ))
    kerja=$(rand_dari "${pekerjaan[@]}")
    hb=$(rand_dari "${hobi[@]}")
    st=$(rand_dari "${status[@]}")
    ag=$(rand_dari "${agama[@]}")
    gd=$(rand_dari "${gol_darah[@]}")
    didik=$(rand_dari "${pendidikan[@]}")
    prov=$(rand_dari "${provider[@]}")
    bk=$(rand_dari "${bank[@]}")
    ew=$(rand_dari "${e_wallet[@]}")
    imei=$(rand_imei)
    rek=$(rand_rek)
    nomor2=$(rand_nomor)
    print_data_full "$nik" "$kk" "$npwp" "$nama" "$gender" "$umur" "$nomor" "$nomor2" "$tgl" "$tempat" "$jalan" "$no_rmh" "$rt" "$rw" "$kota_alamat" "$kec" "$kel" "$kodepos" "$kerja" "$hb" "$st" "$ag" "$gd" "$didik" "$prov" "$bk" "$ew" "$imei" "$rek" "-" "-" "-" "-" "-" "-" "-" "-"
    sad_pendek
    read -p ""
}

kata_kata() {
    clear
    banner
    echo -e "${RED}[ KATA KATA HARI INI ]${NC}"
    echo ""
    pilih=$(( (RANDOM % 10) + 1 ))
    case $pilih in
        1)
            echo -e "${RED}aku cuma orang yang selalu salah di matanya${NC}"
            echo -e "${RED}gak pernah cukup, gak pernah bener${NC}"
            echo -e "${RED}tiap usaha yang aku kasih cuma dianggap angin lalu${NC}"
            echo -e "${RED}dan aku capek, tapi aku gak bisa berhenti berharap${NC}"
            ;;
        2)
            echo -e "${RED}kadang yang paling nyakitin bukan ditinggalin${NC}"
            echo -e "${RED}tapi dipertahanin tanpa alasan yang jelas${NC}"
            echo -e "${RED}dibikin nyaman terus dilepas gitu aja${NC}"
            echo -e "${RED}kayak aku gak pernah punya hati${NC}"
            ;;
        3)
            echo -e "${RED}aku belajar diam bukan karena gak peduli${NC}"
            echo -e "${RED}tapi karena capek jelasin ke orang yang gak mau ngerti${NC}"
            echo -e "${RED}kalau semua yang aku rasa cuma dianggap drama${NC}"
            echo -e "${RED}ya udah, aku pilih sendiri${NC}"
            ;;
        4)
            echo -e "${RED}yang paling berat itu bukan nunggu${NC}"
            echo -e "${RED}tapi nunggu sesuatu yang kamu tau gak akan pernah datang${NC}"
            echo -e "${RED}kamu tetap nunggu, karena gak bisa bohongin hati${NC}"
            echo -e "${RED}walau otak udah bilang berhenti${NC}"
            ;;
        5)
            echo -e "${RED}dia baik, terlalu baik buat aku${NC}"
            echo -e "${RED}makanya aku selalu mikir aku gak pantas${NC}"
            echo -e "${RED}bukan karena dia bilang gitu${NC}"
            echo -e "${RED}tapi karena aku yang ngerasa gak cukup${NC}"
            ;;
        6)
            echo -e "${RED}semua orang pergi, itu wajar${NC}"
            echo -e "${RED}yang gak wajar itu kenapa aku masih berharap mereka balik${NC}"
            echo -e "${RED}padahal udah jelas mereka pergi karena pilihan${NC}"
            echo -e "${RED}bukan karena keadaan${NC}"
            ;;
        7)
            echo -e "${RED}aku gak butuh orang yang sempurna${NC}"
            echo -e "${RED}aku cuma butuh orang yang mau bertahan${NC}"
            echo -e "${RED}masalahnya semua orang bisa datang${NC}"
            echo -e "${RED}tapi yang bertahan selalu sedikit${NC}"
            ;;
        8)
            echo -e "${RED}yang bikin sakit itu bukan luka${NC}"
            echo -e "${RED}tapi bekas yang gak bisa hilang${NC}"
            echo -e "${RED}setiap kali aku lupa, ada aja yang ingetin${NC}"
            echo -e "${RED}kalau dulu aku pernah hancur${NC}"
            ;;
        9)
            echo -e "${RED}kalau kamu ngerasa sendiri${NC}"
            echo -e "${RED}coba lihat cermin, dia yang selama ini nemenin kamu${NC}"
            echo -e "${RED}kadang kita lupa berterima kasih sama diri sendiri${NC}"
            echo -e "${RED}karena udah bertahan sejauh ini${NC}"
            ;;
        10)
            echo -e "${RED}aku pernah percaya sama satu orang${NC}"
            echo -e "${RED}aku kasih semua yang aku punya${NC}"
            echo -e "${RED}dan dia pergi cuma bilang terima kasih${NC}"
            echo -e "${RED}sejak itu aku susah percaya lagi${NC}"
            ;;
    esac
    echo ""
    read -p ""
}

menu() {
    while true; do
        banner
        echo -e "${RED}[ 1 ] NO - NIK              [ 2 ] FOTO - NIK${NC}"
        echo -e "${RED}[ 3 ] URL - NIK              [ 4 ] NO - ALLDATA${NC}"
        echo -e "${RED}[ 5 ] KATA KATA HARI INI     [ 6 ] KELUAR${NC}"
        echo -e "${RED}============================================================${NC}"
        read -p "$(echo -e ${RED})pilih > $(echo -e ${NC})" pilih
        case $pilih in
            1) no_to_nik ;;
            2) foto_to_nik ;;
            3) url_to_nik ;;
            4) no_to_alldata ;;
            5) kata_kata ;;
            6) echo -e "${RED}keluar${NC}"; exit 0 ;;
            *) echo -e "${RED}salah${NC}"; sleep 1 ;;
        esac
    done
}

menu
