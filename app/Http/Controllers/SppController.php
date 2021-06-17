<?php

namespace App\Http\Controllers;

use App\Exports\sppExport;
use App\Siswa;
use App\Spp;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Maatwebsite\Excel\Facades\Excel;

class SppController extends Controller
{
    public function index(Request $request, $id_user){
//        $spp = DB::table('spp')
//            -> select('spp.NIS', 'spp.keterangan_spp', 'spp_detail.status_spp_detail','spp_detail.tanggal_aktual_pembayaran','spp_detail.periode_spp_detail','spp_detail.harga_spp_detail')
//            -> join('spp_detail', 'spp.id_spp', '=', 'spp_detail.id_spp')
//            -> where('spp.NIS', '=', session('id_user'))
//            -> where('spp_detail.status_spp_detail', '=', '0')
//            -> orderBy('keterangan_spp')
//            -> get();
//        $totalSpp = DB::table("spp_detail")
//            ->select('harga_spp_detail','spp.NIS')
//            ->join('spp','spp_detail.id_spp','=','spp.id_spp')
//            ->where('spp.NIS', '=', session('id_user'))
//            -> where('spp_detail.status_spp_detail', '=', '0')
//            ->get()->sum("harga_spp_detail");
//        return view('spp.index', ['spp'=>$spp,'totalSpp' =>$totalSpp]);

//        $nis = $request->NIS;
//        $tanggal_aktual_pembayaran = Spp::where('NIS',$nis)->value('tanggal_aktual_pembayaran');
//        $harga_spp_detail = Spp::where('NIS',$nis)->value('harga_spp_detail');
//        $tanggal_jatuh_tempo = Spp::where('NIS',$nis)->value('tanggal_jatuh_tempo');
        $adminSpp = Spp::all();
        return view('spp.index',['adminSpp' => $adminSpp]);

    }
    public function buktiPembayaran(Request $request,$id_spp_admin,$id_user){
        $adminSpp = Spp::all();
        $bukti_pembayaran = Spp::find($id_spp_admin);
        if ($request->hasFile('bukti_pembayaran')) {
            $bukti = $request->file('file_kegiatan');
            $name =  '.' . $bukti->getClientOriginalExtension();
            $destinationPath = public_path('assets/filePembayaran');
            $bukti->move($destinationPath, $name);
            $bukti_pembayaran->bukti_pembayaran = $name;

        } else {
            $bukti_pembayaran->bukti_pembayaran = null;
        }

        Spp::where('id_spp_admin', $id_spp_admin)
            ->update([
                'bukti_pembayaran' => $bukti_pembayaran
            ]);
        $id = Session::get($id_user);

        return redirect('/buktiPembayaran/'.$id);
    }
    public function exportSpp($id_user){
        return Excel::download(new sppExport($id_user),'sppExport.xlsx');
    }
    public function addSpp(Request $request){
            $siswa = Siswa::all();
            $nis = $request->NIS;
            $nama_depan = Siswa::where('NIS', $nis)->value('nama_depan');
            $nama_belakang = Siswa::where('NIS',$nis)->value('nama_belakang');
            $spp = Spp::all();
            request()->validate(
                [
                    'NIS' => 'required',
                    'tanggal_aktual_pembayaran' => 'required',
                    'tanggal_jatuh_tempo'=>'required',
                    'harga_spp_detail'=>'required',
                ]
            );
            Spp::create([
           'NIS' => $request->NIS,
           'nama_depan' => $nama_depan,
           'nama_belakang' => $nama_belakang,
           'tanggal_aktual_pembayaran' => $request->tanggal_aktual_pembayaran,
           'tanggal_jatuh_tempo' => $request->tanggal_jatuh_tempo,
           'harga_spp_detail' => $request->harga_spp_detail
            ]);

        return view('spp.indexAdmin',['spp' => $spp]);
    }
    public function viewSpp(Request $request){
        $spp = Spp::all();
        return view('spp.indexAdmin',['spp'=>$spp]);
    }
    public function updateSpp(Request $request,$id_spp_admin){
        Spp::where('id_spp_admin', $id_spp_admin)->update([                             //BELUM READY
            'tanggal_mulai_pembayaran' => $request->tanggal_mulai_pembayaran,
            'tanggal_jatuh_tempo' => $request->tanggal_jatuh_tempo,
            'harga_spp_detail' => $request->harga_spp_detail,

        ]);
        return redirect()->route('item.index')->with('pesan_edit', 'Barang berhasil dirubah');
    }

}
