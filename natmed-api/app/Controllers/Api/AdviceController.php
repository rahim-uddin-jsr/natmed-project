<?php

namespace App\Controllers\Api;

use App\Controllers\BaseController;
use App\Models\AdviceRequest;
use CodeIgniter\HTTP\ResponseInterface;

class AdviceController extends BaseController
{
    protected $adviceModel;

    public function __construct()
    {
        $this->adviceModel = new AdviceRequest();
    }

    public function submit()
    {
        try {
            // Get input data
            $data = [
                'name' => $this->request->getPost('name'),
                'email' => $this->request->getPost('email'),
                'care_type' => $this->request->getPost('care_type')
            ];

            if (empty($data['name']) || empty($data['email']) || empty($data['care_type'])) {
                return $this->response->setJSON(['error' => 'All fields are required'])->setStatusCode(400);
            }

            if ($this->adviceModel->insert($data)) {
                return $this->response->setJSON(['message' => 'Advice request submitted successfully'])->setStatusCode(201);
            } else {
                return $this->response->setJSON(['error' => 'Failed to submit request'])->setStatusCode(500);
            }
            
        } catch (\Exception $e) {
            return $this->response->setJSON(['error' => $e->getMessage()])->setStatusCode(500);
        }
    }
}
