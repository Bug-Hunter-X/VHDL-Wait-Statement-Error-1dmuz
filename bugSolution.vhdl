process (clk) begin
  if rising_edge(clk) then
    if rst = '1' then
      count <= 0;
    else
      count <= count + 1;
    end if;
  end if;
end process;

-- Correct wait statement
wait for count = 10;
-- Waits until the counter reaches 10 before continuing