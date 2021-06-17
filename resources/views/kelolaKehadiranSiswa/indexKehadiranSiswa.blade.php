@extends('layout/main')

@section('container')
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="font-size:60px">Kehadiran Siswa</h3>
                    </div>
                    <div class="panel-body">
                            <h3 class="panel-title"></h3>
                            <br>
                        @foreach($kehadiranSiswa as $data2)
                        <form method="POST" action="/verifikasi/{{$data2 -> id}}">
                            @endforeach
                            @method('post')
                            {{ csrf_field() }}
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Nama Depan</th>
                                    <th>Nama Belakang</th>
                                    <th>NIS</th>
                                    <th>Tanggal</th>
                                    <th>Waktu</th>
                                    <th>Hadir</th>
                                    <th>Tidak Hadir</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($kehadiranSiswa as $data)
                                        <tr>
                                            <td class="col-lg-2 col-sm-2">{{$data -> nama_depan}}</td>
                                            <input type="hidden" name="nama_depan" value="{{$data -> nama_depan}}">
                                            <td class="col-sm-2 col-lg-2">{{$data -> nama_belakang}}</td>
                                            <input type="hidden" name="nama_depan" value="{{$data-> nama_belakang}}">
                                            <td class="col-lg-2 col-sm-2">{{$data -> NIS}}</td>
                                            <input type="hidden" name="NIS" value="{{$data -> NIS}}">
                                            <td class="col-lg-2 col-sm-2">{{$data -> tanggal_presensi_siswa}}</td>
                                            <td class="col-lg-2 col-sm-2">{{$data -> waktu_presensi_siswa}}</td>
                                            <td><input type="checkbox" value="hadir" name="kehadiran"></td>
                                            <td><input type="checkbox" value="tidak_hadir" name="kehadiran"></td>
                                        </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <input type="submit" name="" class="align-center">
                        </form>
                        <form method="post" action="">
                            @method('delete')
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger btn-sm fas fa-trash-alt"></button>
                        </form>
                            <br>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
