@extends('layout/main')
@section('container')
    @if(session('id_role')==1)
        <!-- MAIN -->
        <div class="main">
            <!-- MAIN CONTENT -->
            <div class="main-content">
                @if (session('message'))
                    <br><br>
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                        <i class="fa fa-check-circle"></i> {{session('message')}}
                    </div>
                @endif
                <div class="container-fluid">
                    <div class="panel panel-profile">
                        <div class="clearfix">
                            <!-- LEFT COLUMN -->
                            <div class="profile-left">
                                <!-- PROFILE HEADER -->
                                <div class="profile-header">
                                    <div class="overlay"></div>
                                    <div class="profile-main">
                                        <img src="{{$alumni->getProfilePhoto()}}" width="100px" height="100px"
                                             class="img-circle">
                                        <h3 class="name">{{$alumni->nama_depan}} {{$alumni->nama_belakang}}</h3>

                                    </div>
                                </div>
                                <!-- END PROFILE HEADER -->
                                <!-- PROFILE DETAIL -->
                                <div class="profile-detail">
                                    <div class="profile-info">
                                        <h4 class="heading">Informasi Diri</h4>
                                        <ul class="list-unstyled list-justify">
                                            <li>Tahun Lulus <span>{{$alumni->tahun_lulus}}</span></li>
                                                </span></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- END PROFILE DETAIL -->
                            </div>
                            <!-- END LEFT COLUMN -->
                            <!-- RIGHT COLUMN -->
                            <div class="profile-right">
                                <div class="custom-tabs-line tabs-line-bottom left-aligned">
                                    <ul class="nav" role="tablist">
                                        <li class="active"><a href="#tab-bottom-left1" role="tab"
                                                              data-toggle="tab">Sekolah</a>
                                        </li>
                                        <li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">Orang Tua</a></li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="tab-bottom-left1">
                                        <img class="content" src="{{$sekolah->getSchoolPhoto()}}"
                                             width="500px" height="200px">
                                        <h3 class="name">{{$sekolah->nama_sekolah}}</h3>
                                        <h5 class="name">{{$sekolah->alamat_sekolah}}</h5>
                                        <h5 class="name">Nomor Telepon : {{$sekolah->no_telepon_sekolah}}</h5>
                                        <h5 class="name">
                                            Kurikulum : @if($sekolah->id_kurikulum == 'K04') 2004
                                            @elseif($sekolah->id_kurikulum == 'K06') 2006
                                            @elseif($sekolah->id_kurikulum == 'K13') 2013
                                            @endif
                                        </h5>
                                    </div>
                                    <div class="tab-pane" id="tab-bottom-left2">
                                        @foreach($orangTua as $data)
                                            <div class="profile-detail">
                                                <h4 class="heading">Informasi Orang Tua</h4>
                                                <ul class="list-unstyled list-justify">
                                                    <li>Nama<span>{{$data->nama_depan}} {{$data->nama_belakang}}</span>
                                                    </li>
                                                    <li>Alamat<span>{{$data->alamat_orang_tua}}</span></li>
                                                    <li>Status<span>{{$data->keterangan_status}}</span></li>
                                                    <li>Nomor Telepon<span>{{$data->nomor_telepon}}</span></li>
                                                    <li>Pekerjaan<span>{{$data->perkerjaan}}</span></li>
                                                </ul>
                                            </div>
                                        @endforeach
                                        @if($checkOrangTua == 1)
                                            <br><br><br><br><br>
                                        @elseif($checkOrangTua == 0)
                                            <br><br><br><br><br><br><br><br><br><br>
                                        @endif
                                    </div>
                            </div>
                        </div>
                        <!-- END RIGHT COLUMN -->
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT -->
        </div>
        <!-- END MAIN -->
    @elseif(session('id_role')==1)

        <!-- MAIN -->
        <div class="main">
            <!-- MAIN CONTENT -->
            <div class="main-content">
                @if (session('message'))
                    <br><br>
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                        <i class="fa fa-check-circle"></i> {{session('message')}}
                    </div>
                @endif
                <div class="container-fluid">
                    <div class="panel panel-profile">
                        <div class="clearfix">
                            <!-- LEFT COLUMN -->
                            <div class="profile-left">
                                <!-- PROFILE HEADER -->
                                <div class="profile-header">
                                    <div class="overlay"></div>
                                    <div class="profile-main">
                                        <img src="{{$siswa->getProfilePhoto()}}" width="100px" height="100px"
                                             class="img-circle">
                                        <h3 class="name">{{$alumni->nama_depan}} {{$alumni->nama_belakang}}</h3>

                                        <h4>{{$role->nama_role}} - {{$kelas->tingkat_kelas}}
                                            - {{$kelas->nama_kelas}}</h4>

                                    </div>
                                </div>
                                <!-- END PROFILE HEADER -->
                                <!-- PROFILE DETAIL -->
                                <div class="profile-detail">
                                    <div class="profile-info">
                                        <h4 class="heading">Informasi Diri</h4>
                                        <ul class="list-unstyled list-justify">
{{--                                            <li>Tanggal Lahir <span>{{$siswa->tanggal_lahir}}</span></li>--}}
{{--                                            <li>Alamat <span>{{$siswa->alamat_siswa}}</span></li>--}}
{{--                                            <li>Agama <span>{{$siswa->agama}}</span></li>--}}
{{--                                            <li>Nomor Telepon <span>{{$siswa->no_telepon}}</span></li>--}}
{{--                                            <li>Jenis Kelamin <span>@if($siswa->jenis_kelamin == 'P') Perempuan--}}
{{--                                                    @elseif($siswa->jenis_kelamin == 'L') Laki-Laki--}}
{{--                                                    @endif--}}
{{--                                                </span></li>--}}
                                            <li><span><a href="/kelolaSiswaAdmin/{{session('id_user')}}/{{$alumni->id_alumni}}/edit" class="btn btn-info">Ubah Data</a></span></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- END PROFILE DETAIL -->
                            </div>
                            <!-- END LEFT COLUMN -->
                            <!-- RIGHT COLUMN -->
                            <div class="profile-right">
                                <div class="custom-tabs-line tabs-line-bottom left-aligned">
                                    <ul class="nav" role="tablist">
                                        <li class="active"><a href="#tab-bottom-left1" role="tab"
                                                              data-toggle="tab">Sekolah</a>
                                        </li>
                                        <li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">Orang Tua</a></li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="tab-bottom-left1">
                                        <img class="content" src="{{$sekolah->getSchoolPhoto()}}"
                                             width="500px" height="200px">
                                        <h3 class="name">{{$sekolah->nama_sekolah}}</h3>
                                        <h5 class="name">{{$sekolah->alamat_sekolah}}</h5>
                                        <h5 class="name">Nomor Telepon : {{$sekolah->no_telepon_sekolah}}</h5>
                                        <h5 class="name">
                                            Kurikulum : @if($sekolah->id_kurikulum == 'K04') 2004
                                            @elseif($sekolah->id_kurikulum == 'K06') 2006
                                            @elseif($sekolah->id_kurikulum == 'K13') 2013
                                            @endif
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END RIGHT COLUMN -->
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT -->
        </div>
        <!-- END MAIN -->
    @endif
@endsection
