// Copyright 2026 EssilorLuxottica SAS and Fondazione Chips-IT
// SPDX-License-Identifier: SHL-0.51

// Clock gate of the core (sleep unit, latch register file) on the integrated clock gating cell
// of the technology, through pulp_clock_gating (tech_cells), instead of the behavioural
// bhv/cv32e40p_sim_clock_gate.sv, which is for simulation only.

module cv32e40p_clock_gate (
    input  logic clk_i,
    input  logic en_i,
    input  logic scan_cg_en_i,
    output logic clk_o
);

  pulp_clock_gating clock_gate_i (
      .clk_i    (clk_i),
      .en_i     (en_i),
      .test_en_i(scan_cg_en_i),
      .clk_o    (clk_o)
  );

endmodule  // cv32e40p_clock_gate
