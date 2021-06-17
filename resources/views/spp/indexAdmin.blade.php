@extends('layout/main')

@section('container')
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="font-size:60px">Kelola SPP Siswa</h3>
                    </div>
                    <form action="/sppInputSiswa" method="post">
                        @method('post')
                        {{ csrf_field() }}
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <td>
                                    <label for="NIS">NIS:</label>
                                    <input type="text" id="NIS" name="NIS" required><br><br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="tanggal_aktual_pembayaran">Tanggal Pembayaran</label>
                                    <input type="date" name="tanggal_aktual_pembayaran" required><br><br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="tanggal_jatuh_tempo">Tanggal Jatuh Tempo</label>
                                    <input type="date" name="tanggal_jatuh_tempo" required><br><br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="harga_spp_detail">Biaya</label>
                                    <input type="text" name="harga_spp_detail" required><br><br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit">
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </form>

                    <div class="panel-body">
                        <h3 class="panel-title"></h3>
                        <br>
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>NIS</th>
                                    <th>Nama Depan</th>
                                    <th>Nama Belakang</th>
                                    <th>Tanggal Mulai Pembayaran</th>
                                    <th>Tanggal Jatuh Tempo</th>
                                    <th>Biaya</th>

                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($spp as $data)
                                    <tr>
                                        <td class="col-lg-2 col-sm-2">{{$data->NIS}}</td>
                                        <td class="col-lg-2 col-sm-2">{{$data->nama_depan}}</td>
                                        <td class="col-lg-2 col-sm-2">{{$data->nama_belakang}}</td>
                                        <td class="col-lg-2 col-sm-2">{{$data->tanggal_aktual_pembayaran}}</td>
                                        <td class="col-lg-2 col-sm-2">{{$data->tanggal_jatuh_tempo}}</td>
                                        <td class="col-lg-2 col-sm-2">{{$data->harga_spp_detail}}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
