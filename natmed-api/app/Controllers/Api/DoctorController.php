<?php

namespace App\Controllers\Api;

use App\Controllers\BaseController;
use App\Models\DoctorProfile;

class DoctorController extends BaseController
{

    protected $doctorProfile;

    public function __construct()
    {
        $this->doctorProfile = new DoctorProfile();
    }

    public function index()
    {
        try {
            $doctors = $this->doctorProfile->findAll();
            return $this->response->setJSON($doctors);
        } catch (\Exception $e) {
            return $this->response->setJSON(['error' => $e->getMessage()])->setStatusCode(500);
        }
    }

    public function show($id = null)
    {
        try {
            $doctor = $this->doctorProfile->find($id);
            if ($doctor) {
                return $this->response->setJSON($doctor);
            } else {
                return $this->response->setJSON(['error' => 'Doctor not found'])->setStatusCode(404);
            }
        } catch (\Exception $e) {
            return $this->response->setJSON(['error' => $e->getMessage()])->setStatusCode(500);
        }
    }
    
}
